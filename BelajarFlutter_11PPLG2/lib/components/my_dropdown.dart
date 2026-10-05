import 'package:flutter/material.dart';

class MyDropdown<T> extends StatelessWidget {
  final T? value;
  final String hintText;
  final List<DropdownMenuItem<T>> items;
  final ValueChanged<T?> onChanged;

  const MyDropdown({
    super.key,
    required this.value,
    required this.hintText,
    required this.items,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      margin: EdgeInsets.zero,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
        side: const BorderSide(color: Color(0xFFE2E8F0), width: 1.2),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<T>(
            value: value,
            hint: Text(
              hintText,
              style: const TextStyle(color: Color(0xFF94A3B8), fontSize: 14),
            ),
            isExpanded: true,
            icon: const Icon(
              Icons.keyboard_arrow_down,
              color: Color(0xFF6366F1),
            ),
            items: items,
            onChanged: onChanged,
            style: const TextStyle(
              color: Color(0xFF0F172A),
              fontSize: 15,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
