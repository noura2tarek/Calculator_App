import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/custom_elevated_button.dart';
import 'package:flutter_application_2/widgets/custom_outlinedButton.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({
    super.key,
    required this.number1,
    required this.number2,
    required this.number3,
    required this.operation,
    required this.onPressedOperation,
    required this.onPressednumber1,
    required this.onPressednumber2,
    required this.onPressednumber3,
    this.backgroundColor = Colors.teal,
  });

  final String number1;
  final String number2;
  final String number3;
  final String operation;
  final Color? backgroundColor;
  final void Function() onPressedOperation;
  final void Function() onPressednumber1;
  final void Function() onPressednumber2;
  final void Function() onPressednumber3;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomOutlinedButton(
          text: number1,
          onPressed: onPressednumber1,
        ),
        CustomOutlinedButton(
          text: number2,
          onPressed: onPressednumber2,
        ),
        CustomOutlinedButton(
          text: number3,
          onPressed: onPressednumber3,
        ),
        CustomElevatedButton(
          text: operation,
          onPressed: onPressedOperation,
          backgroundColor: backgroundColor,
        ),
      ],
    );
  }
}
