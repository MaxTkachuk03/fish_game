import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    super.key,
    required this.assetName,
    this.onPressed,
  });

  final String assetName;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60.0,
      height: 60.0,
      child: IconButton(
        enableFeedback: true,
        onPressed: onPressed,
        icon: SvgPicture.asset(
          assetName,
        ),
      ),
    );
  }
}
