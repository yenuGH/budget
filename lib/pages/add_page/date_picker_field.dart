import 'package:flutter/material.dart';

import '../../styles/constants.dart';

class DatePickerField extends StatefulWidget {
  const DatePickerField({super.key});

  @override
  State<DatePickerField> createState() => _DatePickerFieldState();
}

class _DatePickerFieldState extends State<DatePickerField> {
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          "First Payment Date",
          style: TextStyles.body,
        ),
        SizedBox(
          width: double.infinity,
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: ColorStyles.inputDecorationColor,
              shape: RoundedRectangleBorder(
                borderRadius: RoundingStyles.containerRounding,
              ),
            ),
            onPressed: _showDatePicker,
            child: Text(
              _selectedDate.toString(),
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  void _showDatePicker() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    ).then(
      (value) {
        setState(
          () {
            _selectedDate = value!;
          },
        );
      },
    );
  }
}
