import 'package:flutter/material.dart';

import '../../../styles/constants.dart';

class ShortTextFormField extends StatefulWidget {
  final String inputTitle;
  final String hintText;
  
  const ShortTextFormField({super.key, required this.inputTitle, required this.hintText});

  @override
  State<ShortTextFormField> createState() => _ShortTextFormFieldState();
}

class _ShortTextFormFieldState extends State<ShortTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: [
        Text(
          widget.inputTitle,
          style: TextStyles.body,
        ),

        Container(
          margin: PaddingStyles.widgetPadding,
        
          decoration: BoxDecoration(
            borderRadius: RoundingStyles.containerRounding,
            color: ColorStyles.inputDecorationColor,
          ),
          
          child: TextFormField(
            // subscription name
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: const TextStyle(
                color: ColorStyles.inputDecorationHintColor,
              ),
        
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
      ],
    );
  }
}
