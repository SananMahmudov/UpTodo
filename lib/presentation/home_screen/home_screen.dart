import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax_plus/iconsax_plus.dart';
import 'package:provider/provider.dart';
import 'package:up_todo/core/constants/constants/app_assets.dart';
import 'package:up_todo/core/constants/constants/app_colors.dart';
import 'package:up_todo/core/constants/constants/app_texts.dart';
import 'package:up_todo/presentation/home_screen/widgets/custom_bottom_nav_bar.dart';
import 'package:up_todo/presentation/home_screen/widgets/open_bottom_sheet.dart';
import 'package:up_todo/presentation/home_screen/widgets/task_provider.dart';
import 'package:up_todo/presentation/home_screen/widgets/todo_box.dart';
import 'package:up_todo/presentation/task_info_screen/task_info_screen.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _openBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (_) => OpenBottomSheet(
        onSend: (title, description, date, priority) {
          context.read<TaskProvider>().addTask(
            title: title,
            description: description,
            date: date,
            priority: priority,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final taskProvider = context.watch<TaskProvider>();
    final tasks = taskProvider.tasks;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.buttonPrimary,
        shape: const CircleBorder(),
        onPressed: () => _openBottomSheet(context),
        child: const Icon(Icons.add, color: Colors.white),
      ),
      appBar: AppBar(
        leading: const Icon(IconsaxPlusLinear.sort, color: AppColors.white),
        title: const Text(
          AppTexts.index,
          style: TextStyle(color: AppColors.white),
        ),
        actions: const [
          Padding(padding: EdgeInsets.only(right: 16), child: CircleAvatar()),
        ],
      ),
      body: SafeArea(
        child: tasks.isEmpty
            ? _buildEmptyState()
            : ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                itemCount: tasks.length,
                itemBuilder: (context, index) {
                  final task = tasks[index];
                  final int priority =
                      int.tryParse(task['priority'] ?? '1') ?? 1;
                  return Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Dismissible(
                      key: ValueKey(task['title']! + index.toString()),
                      direction: DismissDirection.endToStart,
                      background: Container(
                        alignment: Alignment.centerRight,
                        padding: const EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(Icons.delete, color: Colors.white),
                      ),
                      onDismissed: (_) => taskProvider.deleteTask(index),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const TaskInfoScreen(),
                            ),
                          );
                        },
                        child: TodoBox(
                          task: task,
                          onPickDate: () {},
                          selectedPriority: priority,
                        ),
                      ),
                    ),
                  );
                },
              ),
      ),
      bottomNavigationBar: CustomBottomNavBar(onPressed: () {}),
    );
  }

  Widget _buildEmptyState() {
    return ListView(
      children: [
        const SizedBox(height: 74),
        SvgPicture.asset(AppAssets.homeImage),
        const SizedBox(height: 10),
        const Center(
          child: Column(
            children: [
              Text(
                AppTexts.homeTitle,
                style: TextStyle(color: AppColors.white, fontSize: 20),
              ),
              SizedBox(height: 10),
              Text(
                AppTexts.homeSubTitle,
                style: TextStyle(color: AppColors.white, fontSize: 16),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
