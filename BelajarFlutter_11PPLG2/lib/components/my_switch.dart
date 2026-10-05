import 'package:flutter/material.dart';

class MySwitchTile extends StatelessWidget {
  final String title;
  final bool value;
  final ValueChanged<bool> onChanged;

  const MySwitchTile({
    super.key,
    required this.title,
    required this.value,
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
      child: SwitchListTile(
        title: Text(
          title,
          style: const TextStyle(
            color: Color(0xFF0F172A),
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
        value: value,
        activeColor: const Color(0xFF6366F1),
        onChanged: onChanged,
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      ),
    );
  }
}
