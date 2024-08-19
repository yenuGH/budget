import 'package:budget/pages/add_page/cost_input_field.dart';
import 'package:flutter/material.dart';

import '../../styles/constants.dart';
import './short_text_form_field.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Container(
        padding: PaddingStyles.pageContainerPadding,
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Add a new subscription",
              style: TextStyles.title,
            ),

            ShortTextFormField(hintText: "Name of the subscription"),

            CostInputField(),

          ],
        ),
      ),
    );
  }
}
