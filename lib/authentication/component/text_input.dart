import 'package:flutter/material.dart';

import '../../core/colors.dart';
import 'size_fade_switcher.dart';

class TextInputField extends StatelessWidget {
  const TextInputField({
    super.key,
    required this.hintText,
    required this.onChanged,
    this.errorText,
    this.obscureText = false,
  });
  final String hintText;
  final void Function(String value) onChanged;
  final String? errorText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
              color: kAppColor2,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
                color: kAppColor2,
                width: 1.5,
              )),
          child: TextField(
            style: const TextStyle(color: Colors.black),
            onChanged: onChanged,
            obscureText: obscureText,
            decoration: InputDecoration(
              filled: true,
              fillColor: kAppColor2,
              border: InputBorder.none,
              hintText: hintText,
              hintStyle: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
        ),
        SizeFadeSwitcher(
          child: errorText != null
              ? Padding(
                  padding: const EdgeInsets.fromLTRB(16, 4, 16, 0),
                  child: Text(
                    errorText!,
                    style: const TextStyle(color: Colors.red),
                  ),
                )
              : const SizedBox.shrink(),
        )
      ],
    );
  }
}
