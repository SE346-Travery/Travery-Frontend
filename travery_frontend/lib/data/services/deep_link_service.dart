import 'dart:async';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';

typedef DeepLinkHandler = void Function(Uri uri);

class DeepLinkService {
  DeepLinkService._();
  static final DeepLinkService instance = DeepLinkService._();

  final _streamController = StreamController<Uri>.broadcast();
  Stream<Uri> get uriStream => _streamController.stream;

  GoRouter? _router;
  DeepLinkHandler? _paymentHandler;

  // Queue for URIs received before router is registered (cold start)
  final List<Uri> _pendingUris = [];

  void registerRouter(GoRouter router) {
    _router = router;
    // Drain any pending URIs accumulated before router was ready
    for (final uri in _pendingUris) {
      _processUri(uri);
    }
    _pendingUris.clear();
  }

  void registerPaymentHandler(DeepLinkHandler handler) {
    _paymentHandler = handler;
  }

  void handleUri(Uri uri) {
    _streamController.add(uri);
    if (uri.scheme == 'travery' && uri.host == 'payment-result') {
      if (_router != null) {
        _processUri(uri);
      } else {
        // Router not yet ready (cold start) — queue it
        _pendingUris.add(uri);
      }
    }
  }

  Future<void> _processUri(Uri uri) async {
    // Backend sends: travery://payment-result?txnRef=xxx&status=success&responseCode=00
    // NOTE: query param is "status" NOT "deeplinkStatus"
    final txnRef = uri.queryParameters['txnRef'];
    final status = uri.queryParameters['status'];
    final responseCode = uri.queryParameters['responseCode'];

    // IMPORTANT: Backend does NOT send bookingId in deeplink.
    // Must look up bookingId from txnRef using local storage.
    String? bookingId;
    if (txnRef != null && txnRef.isNotEmpty) {
      final prefs = await SharedPreferences.getInstance();
      bookingId = prefs.getString('payment_booking_$txnRef');
    }

    _paymentHandler?.call(uri);
    _router?.push(
      '/payment/result',
      extra: {
        'txnRef': txnRef,
        'deeplinkStatus': status,
        'responseCode': responseCode,
        'bookingId': bookingId,
      },
    );
  }

  void dispose() {
    _streamController.close();
  }
}
