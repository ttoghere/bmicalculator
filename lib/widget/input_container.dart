import 'package:flutter/material.dart';

class InputContainer extends StatelessWidget {
  final Widget child;
  final Color color;
  const InputContainer({
    Key? key,
    required this.child,
    required this.color,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(15),
        ),
        height: 200,
        width: 170,
        child: child,
      ),
    );
  }
}
