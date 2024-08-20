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
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
    
      children: [
        Text(
          title,
          style: TextStyles.title,
        ),
    
        const SizedBox(
          width: 10,
        ),
    
        Expanded(
          child: Container(
            height: 2,
            width: 30,
          
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary,
              borderRadius: RoundingStyles.containerRounding,
            ),
          ),
        ),
      ],
    );
  }
}
