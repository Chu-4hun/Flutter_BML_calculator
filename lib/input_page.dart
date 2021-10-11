import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bml_calc/reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

enum Gender { male, female }

class _InputPageState extends State<InputPage> {
  bool isMale = true;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ));
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        backgroundColor: Theme.of(context).colorScheme.background,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        isMale = true;
                      });
                    },
                    color: isMale
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.surface,
                    cardChild: IconContent(
                      FontAwesomeIcons.mars,
                      'MALE',
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        isMale = false;
                      });
                    },
                    color: !isMale
                        ? Theme.of(context).colorScheme.primary
                        : Theme.of(context).colorScheme.surface,
                    cardChild: IconContent(
                      FontAwesomeIcons.venus,
                      'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: Theme.of(context).colorScheme.surface,
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color: Theme.of(context).colorScheme.surface,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: Theme.of(context).colorScheme.surface,
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(10), bottom: Radius.zero),
              color: Theme.of(context).colorScheme.secondary,
            ),
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: 80.0,
          ),
        ],
      ),
    );
  }
}
