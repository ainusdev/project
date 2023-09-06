import 'package:flutter/material.dart';
import 'package:project/presentation/styles.dart';

class TagsField extends StatelessWidget {
  final Iterable<String> tags;

  const TagsField({
    super.key,
    required this.tags,
  });

  @override
  Widget build(BuildContext context) {
    return Text("${tags.join(", ")}",
        style: MyTextStyles.textStyle1.copyWith(
          fontWeight: FontWeight.w500,
          color: MyColors.color1,
        ));
  }
}
