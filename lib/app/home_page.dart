import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:tally_counter/app/shared/routes.dart';

import 'app_widget.dart';
import 'pages/counter/counter_page.dart';
import 'shared/widgets/popup_trailing.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  State<HomePage> createState() => _HomePageState();
}

class State {
}

class _HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          PopupTrailing(
            onTap: (options) {
              if (options == PopupOptions.showAll) {
                Modular.to.pushNamed(AppRoutes.REGISTER_LIST.route);
              } else {
                Modular.to.pushNamed(
                  AppRoutes.REGISTER_LIST.route,
                  arguments: DateTime.now(),
                );
              }
            },
          )
        ],
      ),
      body: const Center(
        child: CounterPage(),
      ),
    );
  }

  Widget Scaffold({appBar, body}) {}
}

class REGISTER_LIST {
}

class AppRoutes {
  static var REGISTER_LIST;
}

class AppBar {
}
