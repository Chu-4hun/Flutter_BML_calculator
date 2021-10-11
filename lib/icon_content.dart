import 'package:flutter/material.dart';
import 'package:flutter_bml_calc/themes.dart';

class IconContent extends StatelessWidget {
  IconContent(this.ico, this.label);

  final IconData ico;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          ico,
          size: 110.0,
          color: Theme.of(context).colorScheme.secondaryVariant,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: textDefaultStyle,
        ),
      ],
    );
  }
}
