import 'package:flutter/material.dart';

import '../../styles/constants.dart';

class SubmitButton extends StatelessWidget {
  const SubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,

      children: <Widget>[
        Container(
          margin: PaddingStyles.widgetPadding,
          width: MediaQuery.of(context).size.width * 0.5,
          height: 50,

          child: ElevatedButton(
            onPressed: () {},
              
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all<Color>(Theme.of(context).colorScheme.inversePrimary),
            ),
              
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.save, color: Colors.white),
                SizedBox(width: 10),
                Text("Save Subcription", style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ),
      ],
    );
  }
}