import 'package:fish_game/resources/resources.dart';
import 'package:flutter/cupertino.dart';

const ballSize = 200.0;

class CustomFish extends StatelessWidget {
  const CustomFish({
    Key? key,
    required this.x,
    required this.y,
  }) : super(key: key);

  final double x;
  final double y;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: x,
      top: y,
      child: SizedBox(
        width: ballSize,
        height: ballSize,
        child: Image.asset(AppPictures.fish)
      ),
    );
  }
}