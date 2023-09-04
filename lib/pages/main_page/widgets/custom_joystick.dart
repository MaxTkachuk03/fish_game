import 'package:flutter/material.dart';
import 'package:flutter_joystick/flutter_joystick.dart';

class CustomJoystick extends StatelessWidget {
  const CustomJoystick({
    super.key,
    required this.listener,
  });

  final JoystickMode _joystickMode = JoystickMode.all;
  final void Function(StickDragDetails) listener;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(0, 0.9),
      child: Joystick(
        base: Container(
          height: 150.0,
          width: 150.0,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.black,
              width: 3.0,
            ),
            color: Colors.transparent,
            shape: BoxShape.circle,
          ),
        ),
        mode: _joystickMode,
        listener: listener,
      ),
    );
  }
}
