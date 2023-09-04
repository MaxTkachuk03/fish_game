import 'package:fish_game/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_joystick/flutter_joystick.dart';

class MainPage extends StatefulWidget {
  const MainPage({
    super.key,
  });

  static const String routeName = "main";

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  double _x = 150;
  double _y = 150;
  final JoystickMode _joystickMode = JoystickMode.all;

  @override
  void didChangeDependencies() {
    _x = MediaQuery.of(context).size.width / 2 - ballSize / 2;
    _y = MediaQuery.of(context).size.height / 2 - ballSize / 2;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background.jpg"),
              fit: BoxFit.cover),
        ),
        child: CustomAnimatedBackground(
          vsync: this,
          child: Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.back_hand),
              ),
              Ball(
                x: _x,
                y: _y,
              ),
              Align(
                alignment: const Alignment(0, 0.9),
                child: Joystick(
                  base: Container(
                    height: 150,
                    width: 150,
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
                  listener: (details) {
                    setState(() {
                      _x = _x + 20 * details.x;
                      _y = _y + 20 * details.y;
                      print(_x.toString());
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const ballSize = 200.0;

class Ball extends StatelessWidget {
  const Ball({
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
        child: x < this.x
            ? Image.asset("assets/gifs/fish.gif")
            : Image.asset("assets/gifs/fish_reversed.gif"),
      ),
    );
  }
}
