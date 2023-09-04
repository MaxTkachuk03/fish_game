import 'package:fish_game/blocs/bloc/position_bloc.dart';
import 'package:fish_game/pages/pages.dart';
import 'package:fish_game/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PositionBloc(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        initialRoute: EnterPage.routeName,
        onGenerateRoute: AppRouter.generateRoutes,
        routes: {
          EnterPage.routeName: (_) => const EnterPage(),
        },
      ),
    );
  }
}
