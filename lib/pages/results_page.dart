import 'package:flutter/material.dart';
import 'package:flutter_bml_calc/pages/input_page.dart';
import 'package:flutter_bml_calc/reusable_card.dart';

import '../bottom_button.dart';
import '../themes.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.bmiResult,
      required this.textResult,
      required this.coment});
  final String bmiResult;
  final String textResult;
  final String coment;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculation'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Text(
              'Your result',
              style: defaultTextTitleStyle.copyWith(
                  color: Theme.of(context).colorScheme.secondaryVariant),
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: Theme.of(context).colorScheme.surface,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    textResult,
                    style: defaultTextTitleStyle.copyWith(
                        color: Theme.of(context).colorScheme.secondaryVariant),
                  ),
                  Text(
                    bmiResult,
                    style: defaultTextResultStyle.copyWith(
                        color: Theme.of(context).colorScheme.secondaryVariant),
                  ),
                  Text(
                    coment,
                    textAlign: TextAlign.center,
                    style: defaultTextStyle.copyWith(
                        color: Theme.of(context).colorScheme.secondaryVariant),
                  ),
                ],
              ),
            ),
            flex: 5,
          ),
          BottomButton(
            titleText: 'ReCalculate',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => InputPage(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
