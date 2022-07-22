import 'package:bmicalculator/consts/consts.dart';
import 'package:flutter/material.dart';


class GenderCard extends StatefulWidget {
  final String text;
  final IconData icon;
  final VoidCallback onTap;
  final Color activeTC;

  const GenderCard({
    Key? key,
    required this.text,
    required this.icon,
    required this.onTap,
    required this.activeTC,
  }) : super(key: key);

  @override
  State<GenderCard> createState() => _GenderCardState();
}

class _GenderCardState extends State<GenderCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            widget.icon,
            size: 80,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            widget.text,
            style:labelTextStyle,
          ),
        ],
      ),
    );
  }
}
