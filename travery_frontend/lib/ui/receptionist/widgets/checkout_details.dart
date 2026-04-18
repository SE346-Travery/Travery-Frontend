import 'package:flutter/material.dart';

import '../../core/themes/app_colors.dart';
import '../../core/utils/currency_utils.dart';
import '../../../data/repositories/receptionist_repository.dart';

class AddonIcon extends StatelessWidget {
  final AddonType addonType;
  final bool compact;

  const AddonIcon({super.key, required this.addonType, this.compact = false});

  @override
  Widget build(BuildContext context) {
    IconData icon;
    String label;

    switch (addonType) {
      case AddonType.bar:
        icon = Icons.local_bar;
        label = 'Bar';
        break;
      case AddonType.laundry:
        icon = Icons.local_laundry_service;
        label = 'Giặt';
        break;
      case AddonType.meal:
        icon = Icons.restaurant;
        label = 'Ăn';
        break;
    }

    if (compact) {
      return Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.inputBorder),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Icon(icon, size: 12, color: AppColors.textSecondary),
      );
    }

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.inputBorder),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 12, color: AppColors.textSecondary),
          const SizedBox(width: 4),
          Text(
            label,
            style: const TextStyle(fontSize: 9, color: AppColors.textSecondary),
          ),
        ],
      ),
    );
  }
}

class CheckoutItemCard extends StatelessWidget {
  final String customerName;
  final String roomNumber;
  final String expectedTime;
  final List<AddonType> addons;
  final double amount;
  final VoidCallback? onPayTap;

  const CheckoutItemCard({
    super.key,
    required this.customerName,
    required this.roomNumber,
    required this.expectedTime,
    required this.addons,
    required this.amount,
    this.onPayTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColors.inputBackground,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: AppColors.inputBorder),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$customerName ($roomNumber)',
                  style: const TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'Dự kiến: $expectedTime',
                  style: const TextStyle(
                    fontSize: 9,
                    color: AppColors.textSecondary,
                  ),
                ),
                const SizedBox(height: 6),
                Wrap(
                  spacing: 4,
                  runSpacing: 4,
                  children: addons
                      .map((addon) => AddonIcon(addonType: addon))
                      .toList(),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                CurrencyUtils.formatCompact(amount),
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),
              const SizedBox(height: 6),
              ElevatedButton(
                onPressed: onPayTap,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.buttonPrimary,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  minimumSize: const Size(0, 0),
                ),
                child: const Text(
                  'PAY',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: AppColors.buttonPrimaryText,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CheckoutDetails extends StatelessWidget {
  final List<CheckoutItem> items;
  final Function(CheckoutItem)? onPayTap;

  const CheckoutDetails({super.key, required this.items, this.onPayTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0D000000),
            blurRadius: 2,
            offset: Offset(0, 1),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: const BoxDecoration(
              border: Border(bottom: BorderSide(color: AppColors.inputBorder)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Chi tiết Check-out',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6,
                    vertical: 2,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.error.withValues(alpha: 0.2),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    '${items.length} CHỜ',
                    style: const TextStyle(
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                      color: AppColors.error,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: items
                  .map(
                    (item) => Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: CheckoutItemCard(
                        customerName: item.customerName,
                        roomNumber: item.roomNumber,
                        expectedTime: item.expectedTime,
                        addons: item.addons,
                        amount: item.amount,
                        onPayTap: onPayTap != null
                            ? () => onPayTap!(item)
                            : null,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
