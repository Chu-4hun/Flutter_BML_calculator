// ignore_for_file: file_names

import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  RoundIconButton({
    required this.onPress,
    required this.size,
    this.icon,
  });

  final Function()? onPress;
  final IconData? icon;
  final double size;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(
        icon,
        color: Theme.of(context).colorScheme.secondaryVariant,
      ),
      onPressed: onPress,
      elevation: 5.0,
      constraints: BoxConstraints.tightFor(
        width: size,
        height: size,
      ),
      shape: const CircleBorder(),
      fillColor: Theme.of(context).colorScheme.secondary,
    );
  }
}
