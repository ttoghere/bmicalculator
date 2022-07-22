import 'package:flutter/material.dart';

import '../consts/consts.dart';

class HeightSlider extends StatefulWidget {
  const HeightSlider({
    Key? key,
  }) : super(key: key);

  @override
  State<HeightSlider> createState() => _HeightSliderState();
}

class _HeightSliderState extends State<HeightSlider> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Height",
          style: labelTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              sliderHeight.toStringAsFixed(1),
              style: sliderTextStyle,
            ),
            const SizedBox(
              width: 5,
            ),
            const Text(
              "cm",
              style: labelTextStyle,
            ),
          ],
        ),
        SliderTheme(
          data: SliderTheme.of(context).copyWith(
            activeTrackColor: Colors.red[900],
            thumbColor: const Color(0xFFEB1555),
            thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 15.0),
            overlayShape: const RoundSliderOverlayShape(overlayRadius: 30),
          ),
          child: Slider(
              value: sliderHeight.toDouble(),
              min: 50,
              max: 250,
              onChanged: (value) {
                setState(() {
                  sliderHeight = value;
                });
              }),
        )
      ],
    );
  }
}
