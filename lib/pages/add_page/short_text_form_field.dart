import 'package:flutter/material.dart';

import '../../styles/constants.dart';

class ShortTextFormField extends StatefulWidget {
  final String hintText;
  
  const ShortTextFormField({super.key, required this.hintText});

  @override
  State<ShortTextFormField> createState() => _ShortTextFormFieldState();
}

class _ShortTextFormFieldState extends State<ShortTextFormField> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: RoundingStyles.containerRounding,
      child: Container(
        color: ColorStyles.inputDecorationColor,
        margin: PaddingStyles.widgetPadding,
        
        child: TextFormField(
          // subscription name
          decoration: InputDecoration(
            hintText: widget.hintText,
            border: InputBorder.none,
            contentPadding: PaddingStyles.inputDecorationPadding,
          ),
          validator: (String? value) {
            if (value == null || value.isEmpty) {
              return 'Please enter some text';
            }
            return null;
          },
        ),
      ),
    );
  }
}
