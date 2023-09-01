import 'package:animated_background/animated_background.dart';
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
        child: AnimatedBackground(
          vsync: this,
          behaviour: RandomParticleBehaviour(
              options: ParticleOptions(
            image: Image.asset("assets/images/bubbles.png"),
            baseColor: Colors.blue,
            spawnOpacity: 0.5,
            opacityChangeRate: 0.8,
            minOpacity: 0.1,
            maxOpacity: 1.0,
            spawnMinSpeed: 30.0,
            spawnMaxSpeed: 80.0,
            spawnMinRadius: 8.0,
            spawnMaxRadius: 15.0,
            particleCount: 100,
          )),
          child: Stack(
            children: [
              Ball(_x, _y),
              Align(
                alignment: const Alignment(0, 0.9),
                child: Joystick(
                  base: Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black,
                      width: 3.0,),
                      color: Colors.transparent,
                      shape: BoxShape.circle,
                    ),
                  ),
                  mode: _joystickMode,
                  listener: (details) {
                    setState(() {
                      _x = _x + 20 * details.x;
                      _y = _y + 20 * details.y;
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

const ballSize = 20.0;

class Ball extends StatelessWidget {
  final double x;
  final double y;

  const Ball(this.x, this.y, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: x,
      top: y,
      child: Container(
        width: ballSize,
        height: ballSize,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.redAccent,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 2,
              blurRadius: 3,
              //offset: Offset(0, 3),
            )
          ],
        ),
      ),
    );
  }
}
