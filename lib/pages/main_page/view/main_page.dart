import 'package:animated_background/animated_background.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
            ],
          ),
        ),
      ),

    );
  }
}