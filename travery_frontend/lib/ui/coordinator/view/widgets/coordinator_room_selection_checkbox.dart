import 'package:flutter/material.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/app_text_theme.dart';
import 'coordinator_input_field.dart';

class CoordinatorRoomSelectionCheckbox extends StatelessWidget {
  final String label;
  final String imageurl;
  final String hintext;
  final bool isSelected;
  final Function(bool?) onChanged;
  final TextEditingController controller;

  const CoordinatorRoomSelectionCheckbox({
    super.key,
    required this.label,
    required this.imageurl,
    required this.hintext,
    required this.isSelected,
    required this.onChanged,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: isSelected ? AppColors.primaryDarkBlackBlue : Colors.grey.shade100,
          width: isSelected ? 2 : 1,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              imageurl,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: 100,
                  height: 100,
                  color: Colors.grey.shade300,
                  child: const Icon(Icons.image, color: Colors.grey),
                );
              },
            ),
          ),
          const SizedBox(width: 16),
          // Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        label,
                        style: const TextStyle(
                          fontSize: AppTextTheme.headlineSmall,
                          fontWeight: FontWeight.w700,
                          color: AppColors.textPrimary,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    // Custom Checkbox
                    GestureDetector(
                      onTap: () => onChanged(!isSelected),
                      child: Container(
                        width: 26,
                        height: 26,
                        decoration: BoxDecoration(
                          color: isSelected ? AppColors.primaryDarkBlackBlue : Colors.white,
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            color: isSelected ? AppColors.primaryDarkBlackBlue : Colors.grey.shade300,
                            width: 1.5,
                          ),
                        ),
                        child: isSelected
                            ? const Icon(
                                Icons.check,
                                color: Colors.white,
                                size: 18,
                              )
                            : null,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                CoordinatorInputField(
                  hintText: hintext,
                  controller: controller,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
