import 'package:flutter/material.dart';

class CustomCalendar extends StatefulWidget {
  const CustomCalendar({super.key});

  @override
  State<CustomCalendar> createState() => _CustomCalendarState();
}

class _CustomCalendarState extends State<CustomCalendar> {
  DateTime? selectedDate;

  Future<void> pickDate() async {
    final DateTime? date = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );

    if (date != null) {
      setState(() => selectedDate = date);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: pickDate,
      child: Text(
        selectedDate == null
            ? 'Select date'
            : selectedDate!.toString().split(' ').first,
      ),
    );
  }
}
