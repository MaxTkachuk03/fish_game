import 'package:animated_background/animated_background.dart';
import 'package:fish_game/resources/resources.dart';
import 'package:flutter/material.dart';

class CustomAnimatedBackground extends StatelessWidget {
  const CustomAnimatedBackground({
    super.key,
    required this.vsync,
    required this.child,
  });

  final TickerProvider vsync;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return AnimatedBackground(
      vsync: vsync,
      behaviour: RandomParticleBehaviour(
        options: ParticleOptions(
          image: Image.asset(
            AppPictures.bubbles,
          ),
          baseColor: AppColors.blue,
          spawnOpacity: 0.5,
          opacityChangeRate: 0.8,
          minOpacity: 0.1,
          maxOpacity: 1.0,
          spawnMinSpeed: 30.0,
          spawnMaxSpeed: 80.0,
          spawnMinRadius: 8.0,
          spawnMaxRadius: 15.0,
          particleCount: 100,
        ),
      ),
      child: child,
    );
  }
}
