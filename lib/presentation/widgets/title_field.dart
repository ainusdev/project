import 'package:flutter/material.dart';
import 'package:project/presentation/styles.dart';

class TitleField extends StatelessWidget {
  final String value;
  final TextStyle? textStyle;

  const TitleField({
    super.key,
    required this.value,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      style: textStyle ??
          MyTextStyles.textStyle5.copyWith(
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
    );
  }
}
