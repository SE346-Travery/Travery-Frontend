import 'dart:async';
import 'package:go_router/go_router.dart';

typedef DeepLinkHandler = void Function(Uri uri);

class DeepLinkService {
  DeepLinkService._();
  static final DeepLinkService instance = DeepLinkService._();

  final _streamController = StreamController<Uri>.broadcast();
  Stream<Uri> get uriStream => _streamController.stream;

  GoRouter? _router;
  DeepLinkHandler? _paymentHandler;

  void registerRouter(GoRouter router) {
    _router = router;
  }

  void registerPaymentHandler(DeepLinkHandler handler) {
    _paymentHandler = handler;
  }

  void handleUri(Uri uri) {
    _streamController.add(uri);
    if (uri.scheme == 'travery' && uri.host == 'payment-result') {
      final txnRef = uri.queryParameters['txnRef'];
      final status = uri.queryParameters['status'];
      final responseCode = uri.queryParameters['responseCode'];
      _paymentHandler?.call(uri);
      _router?.push(
        '/payment/result',
        extra: {
          'txnRef': txnRef,
          'status': status,
          'responseCode': responseCode,
        },
      );
    }
  }

  void dispose() {
    _streamController.close();
  }
}
