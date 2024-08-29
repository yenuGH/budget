import 'package:flutter/material.dart';

import '../../../styles/constants.dart';

class NotesInputField extends StatefulWidget {
  const NotesInputField({super.key});

  @override
  State<NotesInputField> createState() => _NotesInputFieldState();
}

class _NotesInputFieldState extends State<NotesInputField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          "Notes",
          style: TextStyle(
            fontSize: 14,
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: TextField(
            decoration: InputDecoration(
              contentPadding: PaddingStyles.inputDecorationPadding,
              filled: true,
              fillColor: ColorStyles.inputDecorationColor,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
            ),
            style: const TextStyle(
              color: Colors.white,
            ),
            maxLines: 7,
          ),
        ),
      ],
    );
  }
}