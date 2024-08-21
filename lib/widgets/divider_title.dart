import 'package:budget/styles/constants.dart';
import 'package:flutter/material.dart';

class DividerTitle extends StatelessWidget {
  final String title;

  const DividerTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
      
        children: [
          Text(
            title,
            style: TextStyles.title,
          ),
      
          const SizedBox(
            width: 10,
          ),
      
          /* Expanded(
            child: Container(
              height: 2,
              width: 30,
            
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                borderRadius: RoundingStyles.containerRounding,
              ),
            ),
          ), */
        ],
      ),
    );
  }
}
