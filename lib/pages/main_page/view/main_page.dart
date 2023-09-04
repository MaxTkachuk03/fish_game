import 'package:fish_game/blocs/bloc/position_bloc.dart';
import 'package:fish_game/pages/pages.dart';
import 'package:fish_game/resources/resources.dart';
import 'package:fish_game/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      body: BackGround(
        child: CustomAnimatedBackground(
          vsync: this,
          child: BlocBuilder<PositionBloc, PositionState>(
              builder: (context, state) {
            return Stack(
              children: [
                CustomIconButton(
                  assetName: AppPictures.back,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                CustomFish(
                  x: state.x,
                  y: state.y,
                ),
                CustomJoystick(
                  listener: (details) {
                    context.read<PositionBloc>().add(
                          PositionEvent(
                            x: state.x,
                            y: state.y,
                            details: details,
                          ),
                        );
                    print(state.x.toString());
                  },
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
