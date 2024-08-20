import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../styles/constants.dart';

class BillingCycleField extends StatefulWidget {
  const BillingCycleField({super.key});

  @override
  State<BillingCycleField> createState() => _BillingCycleFieldState();
}

class _BillingCycleFieldState extends State<BillingCycleField> {
  final TextEditingController _controller = TextEditingController(text: "1");

  String billingCycle = "Days";

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Billing Cycle",
          style: TextStyles.body,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Text(
              "Every: ",
              style: TextStyles.body,
            ),

            const SizedBox(
              width: 10,
            ),

            Container(
              margin: PaddingStyles.widgetPadding,
              width: 70,

              decoration: BoxDecoration(
                borderRadius: RoundingStyles.containerRounding,
                color: ColorStyles.inputDecorationColor,
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),

                textAlign: TextAlign.center,

                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },

                controller: _controller,

                keyboardType: TextInputType.number,

                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly,
                ],
              ),
            ),

            const SizedBox(
              width: 10,
            ),

            Expanded(
              child: Container(
                margin: PaddingStyles.widgetPadding,
                decoration: BoxDecoration(
                  borderRadius: RoundingStyles.containerRounding,
                  color: ColorStyles.inputDecorationColor,
                ),
              
                child: DropdownButtonHideUnderline(
                  child: DropdownButton(
                    padding: const EdgeInsets.only(left: 10, right: 10),
              
                    value: billingCycle,
                    items: <String>["Days", "Weeks", "Months", "Years"]
                        .map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  
                    onChanged: (String? value) {
                      setState(() {
                        billingCycle = value!;
                      });
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
