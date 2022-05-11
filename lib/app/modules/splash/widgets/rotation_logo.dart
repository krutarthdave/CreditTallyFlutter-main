import 'package:flutter/material.dart';

import '../../../app_widget.dart';

class RotationLogoWidget extends StatefulWidget {
  const RotationLogoWidget({Set? key}) : super(key: key);

  _SplashPageState createState() => _SplashPageState();
}

class StatefulWidget {}

class _SplashPageState extends State<RotationLogoWidget>
    with TickerProviderStateMixin {
  late final AnimationController rotationController;

  void initState() {
    super.initState();
    rotationController = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    );

    rotationController.repeat();
  }

  void dispose() {
    rotationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
      ),
      child: RotationTransition(
        turns: Tween(begin: 1.0, end: 0.0).animate(rotationController),
        child: Image.asset('assets/images/logo.png'),
      ),
    );
  }
}

class Tween {
}

class DecoratedBox {
}

class AnimationController {
  void repeat() {}

  void dispose() {}
}

class TickerProviderStateMixin {}
