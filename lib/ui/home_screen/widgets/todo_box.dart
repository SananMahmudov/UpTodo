import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:up_todo/utils/constants/app_colors.dart';
import 'package:up_todo/utils/constants/app_assets.dart';

class TodoBox extends StatelessWidget {
  const TodoBox({
    super.key,
    required this.task,
    required this.onPickDate,
    required this.selectedPriority,
  });

  final Map<String, String> task;
  final VoidCallback onPickDate;
  final int selectedPriority;

  String _formatDate(String? isoDate) {
    if (isoDate == null) return 'No date';
    final date = DateTime.parse(isoDate);
    return "${date.day}/${date.month} ${date.hour}:${date.minute.toString().padLeft(2, '0')}";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: AppColors.darkGrey,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.circle_outlined, color: AppColors.white),
              const SizedBox(width: 8),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      task['title']!,
                      style: const TextStyle(
                        color: AppColors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Дата задачи
                        Text(
                          _formatDate(task['date']),
                          style: const TextStyle(
                            color: AppColors.grey,
                            fontSize: 12,
                          ),
                        ),
                        Row(
                          children: [
                            // Блок University с иконкой
                            Container(
                              decoration: BoxDecoration(
                                color: AppColors.buttonPrimary,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              child: Row(
                                children: [
                                  SvgPicture.asset(
                                    AppAssets.schoolLogo,
                                    width: 16,
                                    height: 16,
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    'University',
                                    style: const TextStyle(
                                      color: AppColors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(width: 12),
                            // Флаг с приоритетом
                            Container(
                              height: 28,
                              width: 42,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: AppColors.buttonPrimary,
                                ),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    IconsaxPlusLinear.flag,
                                    size: 14,
                                    color: AppColors.white,
                                  ),
                                  const SizedBox(width: 2),
                                  Text(
                                    selectedPriority.toString(),
                                    style: const TextStyle(
                                      color: AppColors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
