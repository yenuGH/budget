import 'package:budget/pages/add_page/components/color_picker_field.dart';
import 'package:budget/pages/add_page/components/date_picker_field.dart';
import 'package:budget/pages/add_page/components/submit_button.dart';
import 'package:flutter/material.dart';

import '../../styles/constants.dart';
import 'package:budget/widgets/divider_title.dart';


import 'components/cost_input_field.dart';
import 'components/billing_cycle_field.dart';
import 'components/short_text_form_field.dart';
import 'components/notes_input_field.dart';

class AddPage extends StatefulWidget {
  const AddPage({super.key});

  @override
  State<AddPage> createState() => _AddPageState();
}

class _AddPageState extends State<AddPage> {
  TextEditingController subscriptionNameController = TextEditingController();
  TextEditingController costController = TextEditingController();
  TextEditingController paymentMethodController = TextEditingController();
  int billingCycle = 0; // the default interval for the cycle will be set to 0 days
  DateTime firstPaymentDate = DateTime.now(); // the default date will be set to the user's current date
  String color = "#FFFFFF"; // the default color will be set to white
  String notes = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Add Subscription"),
      ),
      body: SingleChildScrollView(
        padding: PaddingStyles.pageContainerPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const DividerTitle(title: "Details"),

            ShortTextFormField(inputTitle: "Subscription Name", hintText: "ex: Amazon Prime", inputController: subscriptionNameController),

            CostInputField(inputController: costController),

            const DividerTitle(title: "Billing"),

            ShortTextFormField(inputTitle: "Payment Method", hintText: "ex: Credit Card", inputController: paymentMethodController),

            const BillingCycleField(),

            const DatePickerField(),

            const DividerTitle(title: "Extra (Optional)"),

            const ColorPickerField(),

            const NotesInputField(),

            const SizedBox(height: 10),

            const SubmitButton(),
          ],
        ),
      ),
    );
  }
}
