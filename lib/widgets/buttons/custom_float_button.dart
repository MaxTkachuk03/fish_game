import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onPressed,
    required this.label,
    this.backgroundColor,
  });

  final void Function()? onPressed;
  final Widget label;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      backgroundColor: backgroundColor,
      onPressed: onPressed,
      label: label,
      heroTag: label,
    );
  }
}
