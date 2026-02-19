import 'package:flutter/material.dart';

class CategoryModel {
  final String title;
  final IconData icon;
  final Color color;

  CategoryModel({required this.title, required this.icon, required this.color});
}
List<CategoryModel> categories = [
  CategoryModel(title: "Grocery", icon: Icons.bakery_dining_outlined, color: Color(0xFFCCFF90)),
  CategoryModel(title: "Work", icon: Icons.work_outline, color: Color(0xFFFF9E80)),
  CategoryModel(title: "Sport", icon: Icons.fitness_center, color: Color(0xFF80D8FF)),
  CategoryModel(title: "Design", icon: Icons.design_services_outlined, color: Color(0xFF80F1D1)),
  CategoryModel(title: "University", icon: Icons.school_outlined, color: Color(0xFF82B1FF)),
  CategoryModel(title: "Social", icon: Icons.campaign_outlined, color: Color(0xFFFF80AB)),
  CategoryModel(title: "Music", icon: Icons.music_note_outlined, color: Color(0xFFEA80FC)),
  CategoryModel(title: "Health", icon: Icons.favorite_border, color: Color(0xFFB9F6CA)),
  CategoryModel(title: "Movie", icon: Icons.videocam_outlined, color: Color(0xFF84FFFF)),
  CategoryModel(title: "Home", icon: Icons.home_outlined, color: Color(0xFFFFD180)),
  CategoryModel(title: "Create New", icon: Icons.add, color: Color(0xFFB2FF59)),
];