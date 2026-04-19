import 'package:flutter/material.dart';

import '../../../../core/themes/app_colors.dart';

class QRView extends StatelessWidget {
  final String? qrCodeUrl;
  final double size;
  final VoidCallback? onRefresh;

  const QRView({
    super.key,
    this.qrCodeUrl,
    this.size = 256,
    this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(color: AppColors.primary.withOpacity(0.08), blurRadius: 64, offset: const Offset(0, 32)),
        ],
      ),
      child: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildCorner(top: true, left: true),
                  const SizedBox(width: 32),
                  _buildCorner(top: true, left: false),
                ],
              ),
              Container(
                width: size,
                height: size,
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(12)),
                child: qrCodeUrl != null ? Image.network(qrCodeUrl!, fit: BoxFit.contain, errorBuilder: (_, __, ___) => _buildPlaceholderQR()) : _buildPlaceholderQR(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildCorner(top: false, left: true),
                  const SizedBox(width: 32),
                  _buildCorner(top: false, left: false),
                ],
              ),
            ],
          ),
          if (onRefresh != null)
            Positioned(
              top: 0,
              right: 0,
              child: GestureDetector(
                onTap: onRefresh,
                child: Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: AppColors.inputBackground,
                    shape: BoxShape.circle,
                    boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 8, offset: const Offset(0, 2))],
                  ),
                  child: const Icon(Icons.refresh, size: 20, color: AppColors.primary),
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildCorner({required bool top, required bool left}) {
    return Container(
      width: 32,
      height: 32,
      decoration: BoxDecoration(
        border: Border(
          top: top ? const BorderSide(color: AppColors.primary, width: 4) : BorderSide.none,
          bottom: !top ? const BorderSide(color: AppColors.primary, width: 4) : BorderSide.none,
          left: left ? const BorderSide(color: AppColors.primary, width: 4) : BorderSide.none,
          right: !left ? const BorderSide(color: AppColors.primary, width: 4) : BorderSide.none,
        ),
        borderRadius: BorderRadius.only(
          topLeft: top && left ? const Radius.circular(12) : Radius.zero,
          topRight: top && !left ? const Radius.circular(12) : Radius.zero,
          bottomLeft: !top && left ? const Radius.circular(12) : Radius.zero,
          bottomRight: !top && !left ? const Radius.circular(12) : Radius.zero,
        ),
      ),
    );
  }

  Widget _buildPlaceholderQR() {
    return Container(
      width: size - 16,
      height: size - 16,
      decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.qr_code_2, size: 80, color: AppColors.primary.withOpacity(0.3)),
          const SizedBox(height: 8),
          Text('QR Code', style: TextStyle(fontSize: 12, color: AppColors.textHint)),
        ],
      ),
    );
  }
}
