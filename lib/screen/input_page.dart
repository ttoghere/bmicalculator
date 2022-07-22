// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../consts/consts.dart';
import '../widget/widgets_shelf.dart';

class InputPage extends StatefulWidget {
  const InputPage({
    Key? key,
  }) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;
  void updateColor(int gender) {
    if (gender == 1) {
      maleCardColor = activeCardColor;
    } else {
      maleCardColor = inactiveCardColor;
    }
    if (gender == 2) {
      femaleCardColor = activeCardColor;
    } else {
      femaleCardColor = inactiveCardColor;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: const Text(
          'BMI Calculator',
        ),
      ),
      body: ListView(
        children: [
          Row(
            children: [
              InputContainer(
                color: maleCardColor,
                child: GenderCard(
                  activeTC: activeTextColor,
                  onTap: () => setState(() {
                    updateColor(1);
                  }),
                  icon: FontAwesomeIcons.mars,
                  text: "Male",
                ),
              ),
              InputContainer(
                color: femaleCardColor,
                child: GenderCard(
                  activeTC: activeTextColor,
                  onTap: () => setState(() {
                    updateColor(2);
                  }),
                  icon: FontAwesomeIcons.venus,
                  text: "Female",
                ),
              ),
            ],
          ),
          Row(
            children: const [
              InputContainer(
                color: inactiveCardColor,
                child: HeightSlider(),
              ),
            ],
          ),
          Row(
            children: [
              InputContainer(
                color: Theme.of(context).cardColor,
                child: Container(),
              ),
              InputContainer(
                color: Theme.of(context).cardColor,
                child: Container(),
              ),
            ],
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Theme(
        data: ThemeData(
            colorScheme:
                ColorScheme.fromSwatch().copyWith(secondary: Colors.red[900])),
        child: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
