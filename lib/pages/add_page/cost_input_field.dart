import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../styles/constants.dart';

class CostInputField extends StatefulWidget {
  const CostInputField({super.key});

  @override
  State<CostInputField> createState() => _CostInputFieldState();
}

class _CostInputFieldState extends State<CostInputField> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,

      children: <Widget>[
        /* const Text(
          "Cost",
          style: TextStyles.body,
        ), */

        Container(
          margin: PaddingStyles.widgetPadding,

          decoration: BoxDecoration(
            borderRadius: RoundingStyles.containerRounding,
            color: ColorStyles.inputDecorationColor,
          ),

          height: 200,
          width: double.infinity, // Ensure the container takes full width

          child: Center(
            child: SizedBox(
              // width: 300, // Set a specific width for the TextFormField
              child: TextFormField(
                controller: _controller,
                
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),

                textAlign: TextAlign.center,

                style: const TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                ),

                decoration: const InputDecoration(
                  border: InputBorder.none,
                  contentPadding: PaddingStyles.inputDecorationPadding,
                  hintText: "0.00",
                  hintStyle: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                      color: ColorStyles.inputDecorationHintColor),
                ),

                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*')),
                  DecimalTextInputFormatter(decimalRange: 2),
                ],

                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class DecimalTextInputFormatter extends TextInputFormatter {
  DecimalTextInputFormatter({required this.decimalRange})
      : assert(decimalRange > 0);

  final int decimalRange;

  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    final text = newValue.text;

    if (text == '') {
      return newValue;
    }

    final newText = text.replaceAll(RegExp(r'[^\d.]'), '');
    final parts = newText.split('.');

    if (parts.length > 2) {
      return oldValue;
    }

    if (parts.length == 2 && parts[1].length > decimalRange) {
      return oldValue;
    }

    return newValue.copyWith(
      text: newText,
      selection: newValue.selection,
    );
  }
}
