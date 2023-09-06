import 'package:flutter/material.dart';
import 'package:project/presentation/styles.dart';

class OptionsWrapper extends StatelessWidget {
  const OptionsWrapper({
    super.key,
    required this.options,
  });

  final Iterable<String> options;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Wrap(
        spacing: 8,
        runSpacing: 8,
        children: options
            .map((e) => Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: MyColors.color6,
                ),
                child: Text(
                  "$e",
                  style: MyTextStyles.textStyle2.copyWith(
                    color: MyColors.color4,
                    fontWeight: FontWeight.w500,
                  ),
                )))
            .toList(),
      ),
    );
  }
}
