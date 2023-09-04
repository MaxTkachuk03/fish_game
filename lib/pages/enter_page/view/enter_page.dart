import 'package:fish_game/generated/l10n.dart';
import 'package:fish_game/pages/main_page/view/main_page.dart';
import 'package:fish_game/resources/resources.dart';
import 'package:fish_game/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class EnterPage extends StatefulWidget {
  const EnterPage({
    super.key,
  });

  static const String routeName = "/";

  @override
  State<EnterPage> createState() => _EnterPageState();
}

class _EnterPageState extends State<EnterPage> with TickerProviderStateMixin {
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
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                Text(
                  S.of(context).hello,
                  textAlign: TextAlign.center,
                  style: AppStyles.mainStyle,
                ),
                const Spacer(),
                CustomButton(
                  label: Text(
                    S.of(context).play,
                    style: AppStyles.buttonStyle,
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                      MainPage.routeName,
                    );
                  },
                  backgroundColor: AppColors.yellow,
                ),
                const Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
