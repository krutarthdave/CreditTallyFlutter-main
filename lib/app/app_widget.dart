import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TallyApp extends StatelessWidget {
  const TallyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Tally Counter',
      themeMode: ThemeMode.system,
      theme: ThemeData(
        primarySwitch: Colors.blue,
      ),
      darkTheme: ThemeData.dark(),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale.fromSubtags(languageCode: 'pt'),
        Locale.fromSubtags(languageCode: 'en'),
      ],
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    );
  }
}

class GlobalWidgetsLocalizations {
}

class Modular {
  static var routeInformationParser;

  static var routerDelegate;

  static String initialRoute;

  static var to;
}

class Colors {
  static var blue;
}

class ThemeData {
  static dark() {}
}

class ThemeMode {
  static var system;
}

class MaterialApp {
  static Widget router(
      {String? title,
      themeMode,
      theme,
      darkTheme,
      List? localizationsDelegates,
      List? supportedLocales,
      routeInformationParser,
      routerDelegate}) {}
}

mixin Widget {}

class Key {}

class StatelessWidget {}

class BuildContext {}
