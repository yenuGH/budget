import 'package:budget/pages/add_page/color_picker_field.dart';
import 'package:budget/pages/add_page/date_picker_field.dart';
import 'package:budget/pages/add_page/submit_button.dart';
import 'package:flutter/material.dart';

import '../../styles/constants.dart';
import 'package:budget/widgets/divider_title.dart';


import './cost_input_field.dart';
import './billing_cycle_field.dart';
import './short_text_form_field.dart';
import './notes_input_field.dart';

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
        title: const Text("Add Subscription"),
      ),
      body: const SingleChildScrollView(
        padding: PaddingStyles.pageContainerPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            DividerTitle(title: "Details"),

            ShortTextFormField(inputTitle: "Subscription Name", hintText: "ex: Amazon Prime"),

            CostInputField(),

            DividerTitle(title: "Billing"),

            ShortTextFormField(inputTitle: "Payment Method", hintText: "ex: Credit Card"),

            BillingCycleField(),

            DatePickerField(),

            DividerTitle(title: "Extra (Optional)"),

            ColorPickerField(),

            NotesInputField(),

            SubmitButton(),
          ],
        ),
      ),
    );
  }
}
