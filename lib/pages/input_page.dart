import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bml_calc/Round_Button_w_Icon.dart';
import 'package:flutter_bml_calc/bmi_logic.dart';
import 'package:flutter_bml_calc/pages/results_page.dart';
import 'package:flutter_bml_calc/reusable_card.dart';
import 'package:flutter_bml_calc/themes.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../bottom_button.dart';
import '../icon_content.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  bool isMale = true;
  int height = 180;
  int weight = 80;
  int age = 18;
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
        crossAxisAlignment: CrossAxisAlignment.stretch,
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
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Height',
                    style: defaultTextStyle.copyWith(
                        color: Theme.of(context).colorScheme.secondaryVariant),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        height.toString(),
                        style: defaultTextBoldStyle.copyWith(
                            color:
                                Theme.of(context).colorScheme.secondaryVariant),
                      ),
                      Text(
                        'cm',
                        style: defaultTextStyle.copyWith(
                            color:
                                Theme.of(context).colorScheme.secondaryVariant),
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: defaultSliderTheme,
                    child: Slider(
                      value: height.toDouble(),
                      min: 110.0,
                      max: 230.0,
                      thumbColor: Theme.of(context).colorScheme.secondary,
                      inactiveColor: Theme.of(context).colorScheme.primary,
                      activeColor:
                          Theme.of(context).colorScheme.secondaryVariant,
                      onChanged: (double newValue) {
                        setState(
                          () {
                            height = newValue.round();
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    color: Theme.of(context).colorScheme.surface,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Weight',
                          style: defaultTextStyle.copyWith(
                              color: Theme.of(context)
                                  .colorScheme
                                  .secondaryVariant),
                        ),
                        Text(
                          weight.toString(),
                          style: defaultTextBoldStyle.copyWith(
                              color: Theme.of(context)
                                  .colorScheme
                                  .secondaryVariant),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: (RoundIconButton(
                                onPress: () {
                                  setState(
                                    () {
                                      if (weight > 0) {
                                        weight--;
                                      }
                                    },
                                  );
                                },
                                size: 56.0,
                                icon: FontAwesomeIcons.minus,
                              )),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: (RoundIconButton(
                                size: 56.0,
                                icon: FontAwesomeIcons.plus,
                                onPress: () {
                                  setState(
                                    () {
                                      weight++;
                                    },
                                  );
                                },
                              )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    color: Theme.of(context).colorScheme.surface,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Age',
                          style: defaultTextStyle.copyWith(
                              color: Theme.of(context)
                                  .colorScheme
                                  .secondaryVariant),
                        ),
                        Text(
                          age.toString(),
                          style: defaultTextBoldStyle.copyWith(
                              color: Theme.of(context)
                                  .colorScheme
                                  .secondaryVariant),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: (RoundIconButton(
                                onPress: () {
                                  setState(
                                    () {
                                      if (age > 0) {
                                        age--;
                                      }
                                    },
                                  );
                                },
                                size: 56.0,
                                icon: FontAwesomeIcons.minus,
                              )),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: (RoundIconButton(
                                size: 56.0,
                                icon: FontAwesomeIcons.plus,
                                onPress: () {
                                  setState(
                                    () {
                                      age++;
                                    },
                                  );
                                },
                              )),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            titleText: 'Calculate',
            onTap: () {
              CalculatorBrian calc =
                  CalculatorBrian(height: height, weight: weight);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultsPage(
                      bmiResult: calc.calculateBMI(),
                      textResult: calc.getResult(),
                      coment: calc.getComment()),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
