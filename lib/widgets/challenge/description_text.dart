import 'package:flutter/material.dart';

class DescriptionText extends StatelessWidget {
  const DescriptionText();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
        'Quis risus, neque cursus risus. '
        'Eget dictumst vitae enim, felis morbi.',
        style: TextStyle(
          fontSize: 14,
          height: 1.6,
          color: Colors.grey.shade700,
        ),
      ),
    );
  }
}
