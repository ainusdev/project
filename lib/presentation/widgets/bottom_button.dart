import 'package:flutter/material.dart';
import 'package:project/presentation/styles.dart';

class BottomButton extends StatelessWidget {
  final String _title;
  final VoidCallback _onPressed;

  const BottomButton({
    super.key,
    required String title,
    required void Function() onPressed,
  })  : _onPressed = onPressed,
        _title = title;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: MyColors.color8,
          ),
        ),
      ),
      child: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          child: ElevatedButton(
            onPressed: _onPressed,
            child: Text(
              _title,
              style: MyTextStyles.textStyle2,
            ),
          ),
        ),
      ),
    );
  }
}
