import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyTextField extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final bool obscureText;
  final IconData? prefixIcon;

  const MyTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.keyboardType,
    this.inputFormatters,
    this.obscureText = false,
    this.prefixIcon,
  });

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  bool _isHovered = false;
  bool _isFocused = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          boxShadow: [
            BoxShadow(
              color: (_isFocused || _isHovered)
                  ? const Color(0xFF6366F1).withOpacity(0.15)
                  : Colors.black.withOpacity(0.03),
              blurRadius: (_isFocused || _isHovered) ? 12 : 6,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Focus(
          onFocusChange: (hasFocus) => setState(() => _isFocused = hasFocus),
          child: Card(
            elevation: 0,
            margin: EdgeInsets.zero,
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(14),
              side: BorderSide(
                color: _isFocused
                    ? const Color(0xFF6366F1)
                    : (_isHovered
                          ? const Color(0xFFA5B4FC)
                          : const Color(0xFFE2E8F0)),
                width: _isFocused ? 2.0 : 1.2,
              ),
            ),
            child: TextField(
              controller: widget.controller,
              keyboardType: widget.keyboardType,
              inputFormatters: widget.inputFormatters,
              obscureText: widget.obscureText,
              style: const TextStyle(
                color: Color(0xFF0F172A),
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
              decoration: InputDecoration(
                hintText: widget.hintText,
                hintStyle: const TextStyle(
                  color: Color(0xFF94A3B8),
                  fontSize: 14,
                ),
                prefixIcon: widget.prefixIcon != null
                    ? Icon(
                        widget.prefixIcon,
                        color: (_isFocused || _isHovered)
                            ? const Color(0xFF6366F1)
                            : const Color(0xFF94A3B8),
                        size: 20,
                      )
                    : null,
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 18,
                  vertical: 16,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
