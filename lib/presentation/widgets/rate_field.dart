import 'package:flutter/material.dart';
import 'package:project/presentation/styles.dart';

class RateField extends StatelessWidget {
  final num value;

  const RateField({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
        color: MyColors.color3.withOpacity(0.2),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Column(
            children: [
              Image.asset(
                "assets/icon_star.png",
                width: 15,
                height: 15,
              )
            ],
          ),
          Text(
            "${value.toInt()} Превосходно",
            style: MyTextStyles.textStyle2.copyWith(
              fontWeight: FontWeight.w500,
              color: MyColors.color7,
            ),
          ),
        ],
      ),
    );
  }
}
