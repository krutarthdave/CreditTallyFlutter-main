import 'dart:io';
import 'app/app_module.dart';
import 'app/app_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  var defaultSystemLocale = '';
  if (!kIsWeb) {
    // Get the initial locale values
    defaultSystemLocale = Platform.localeName;
  } else {
    final currentSystemLocales = WidgetsBinding.instance?.window.locales;
    defaultSystemLocale = currentSystemLocales?.first.languageCode ?? 'pt_BR';
  }
  Intl.defaultLocale = defaultSystemLocale;
  runApp(ModularApp(
    module: AppModule(),
    child: const TallyApp(),
  ));
}

void runApp(ModularApp modularApp) {}

class ModularApp {}

class Intl {
  static String defaultLocale;
}

class WidgetsBinding {
  static var instance;
}

class WidgetsFlutterBinding {
  static void ensureInitialized() {}
}
