import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:up_todo/ui/home_screen/widgets/custom_bottom_nav_bar.dart';
import 'package:up_todo/ui/home_screen/widgets/open_bottom_sheet.dart';
import 'package:up_todo/ui/home_screen/widgets/todo_box.dart';
import 'package:up_todo/ui/profile_screen/profile_screen.dart';
import 'package:up_todo/utils/constants/app_assets.dart';
import 'package:up_todo/utils/constants/app_colors.dart';
import 'package:up_todo/utils/constants/app_texts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, String>> tasks = [];

  void _openBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (_) => OpenBottomSheet(
        onSend: (title, description, date, priority) {
          setState(() {
            tasks.add({
              'title': title,
              'description': description,
              if (date != null) 'date': date.toIso8601String(),
              'priority': priority.toString(),
            });
          });
        },
      ),
    );
  }

  Future<void> _pickDateForTask(int index) async {
    final DateTime? date = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: const ColorScheme.dark(
              primary: AppColors.buttonPrimary,
              onPrimary: Colors.white,
              onSurface: Colors.white,
            ),
          ),
          child: child!,
        );
      },
    );

    if (date != null) {
      setState(() {
        tasks[index]['date'] = date.toIso8601String();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.buttonPrimary,
        shape: const CircleBorder(),
        onPressed: _openBottomSheet,
        child: const Icon(Icons.add, color: Colors.white),
      ),
      appBar: AppBar(
        leading: Icon(IconsaxPlusLinear.sort, color: AppColors.white),
        title: Text(
          AppTexts.index,
          style: const TextStyle(color: AppColors.white),
        ),
        actions: const [CircleAvatar()],
      ),
      body: SafeArea(
        child: tasks.isEmpty
            ? ListView(
                children: [
                  const SizedBox(height: 74),
                  SvgPicture.asset(AppAssets.homeImage),
                  const SizedBox(height: 10),
                  Center(
                    child: Column(
                      children: [
                        Text(
                          AppTexts.homeTitle,
                          style: const TextStyle(
                            color: AppColors.white,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          AppTexts.homeSubTitle,
                          style: const TextStyle(
                            color: AppColors.white,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: ListView.builder(
                  itemCount: tasks.length,
                  itemBuilder: (context, index) {
                    final task = tasks[index];
                    final int priority =
                        int.tryParse(task['priority'] ?? '1') ?? 1;

                    return TodoBox(
                      task: task,
                      onPickDate: () => _pickDateForTask(index),
                      selectedPriority:
                          priority, // передаем выбранный приоритет
                    );
                  },
                ),
              ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        onPressed: () {

        },
      ),
    );
  }
}
