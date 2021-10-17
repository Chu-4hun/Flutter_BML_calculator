import 'package:flutter/material.dart';
import 'package:flutter_bml_calc/pages/results_page.dart';
import 'package:flutter_bml_calc/themes.dart';

class BottomButton extends StatelessWidget {
  BottomButton({this.onTap, required this.titleText});

  Function()? onTap;
  String titleText;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            titleText,
            style: defaultTextBoldStyle.copyWith(
                color: Theme.of(context).colorScheme.secondaryVariant),
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(
              top: Radius.circular(10), bottom: Radius.zero),
          color: Theme.of(context).colorScheme.secondary,
        ),
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: 80.0,
        padding: const EdgeInsets.only(bottom: 10.0),
      ),
    );
  }
}
