import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:project/presentation/styles.dart';

class PriceField extends StatelessWidget {
  final num value;
  final String description;

  const PriceField({
    super.key,
    required this.value,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    final numberFormat = NumberFormat('###,###.## ₽', 'ru_RU');

    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          numberFormat.format(value),
          style: MyTextStyles.textStyle6.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 8, bottom: 3),
            child: Text(
              description,
              style: MyTextStyles.textStyle2.copyWith(
                fontWeight: FontWeight.w400,
                color: MyColors.color4,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
