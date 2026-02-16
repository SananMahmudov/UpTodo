import 'package:flutter/material.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:up_todo/ui/home_screen/widgets/task_category_sheet.dart';
import 'package:up_todo/ui/home_screen/widgets/task_priority_example.dart';
import 'package:up_todo/utils/constants/app_colors.dart';
import 'package:up_todo/utils/constants/app_texts.dart';

class OpenBottomSheet extends StatefulWidget {
  final void Function(
    String title,
    String description,
    DateTime? date,
    int priority,
  )
  onSend;

  const OpenBottomSheet({super.key, required this.onSend});

  @override
  State<OpenBottomSheet> createState() => _OpenBottomSheetState();
}

class _OpenBottomSheetState extends State<OpenBottomSheet> {
  String title = '';
  String description = '';
  DateTime? selectedDate;
  int _priority = 1; 

  Future<void> _pickDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
      builder: (context, child) => Theme(
        data: Theme.of(context).copyWith(
          colorScheme: const ColorScheme.dark(
            primary: AppColors.buttonPrimary,
            onPrimary: Colors.white,
            onSurface: Colors.white,
          ),
        ),
        child: child!,
      ),
    );

    if (picked != null) setState(() => selectedDate = picked);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: AppColors.darkGrey,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppTexts.addTask,
            style: const TextStyle(
              color: AppColors.white,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(height: 8),
          TextField(
            onChanged: (value) => title = value,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.grey),
              ),
              hintText: AppTexts.addTask,
              hintStyle: TextStyle(color: AppColors.grey),
            ),
            style: const TextStyle(color: AppColors.white),
          ),
          const SizedBox(height: 8),
          TextField(
            onChanged: (value) => description = value,
            decoration: InputDecoration(
              hintText: AppTexts.description,
              hintStyle: TextStyle(color: AppColors.grey),
              enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.grey),
              ),
            ),
            style: const TextStyle(color: AppColors.white),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              IconButton(
                icon: const Icon(IconsaxPlusLinear.timer_1),
                color: AppColors.white,
                onPressed: _pickDate,
              ),
              IconButton(
                icon: const Icon(IconsaxPlusLinear.tag),
                color: AppColors.white,
                onPressed: () async {
                  final selected = await showDialog<int>(
                    context: context,
                    builder: (_) => const TaskCategorySheet(),
                  );
                  if (selected != null) setState(() => _priority = selected);
                },
              ),
              IconButton(
                icon: const Icon(IconsaxPlusLinear.flag),
                color: AppColors.white,
                onPressed: () async {
                  final selected = await showDialog<int>(
                    context: context,
                    builder: (_) => const TaskPriorityExample(),
                  );
                  if (selected != null) setState(() => _priority = selected);
                },
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(IconsaxPlusLinear.send_1),
                color: AppColors.buttonPrimary,
                onPressed: () {
                  if (title.trim().isEmpty) return;
                  widget.onSend(
                    title.trim(),
                    description.trim(),
                    selectedDate,
                    _priority,
                  );
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
