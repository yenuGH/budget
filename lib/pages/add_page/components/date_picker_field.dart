import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'dart:developer';

import '../../../styles/constants.dart';

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
            onPressed: showDatePickerDialog,
            child: Text(
              formatDate(_selectedDate),
              style: const TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }

  void showDatePickerDialog() {
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
    ).catchError(
      (error) {
        // this will run if the user does not select a date and clicks outside the dialog that pops up
        log("Error: $error");
      },
    );
  }

  String formatDate(DateTime date) {
    // format the date to the following format: "DAY, MONTH DATE, YEAR"
    // e.g. "Monday, August 23, 2021"
    return DateFormat("EEEE, MMMM d - y").format(date);
  }
}
