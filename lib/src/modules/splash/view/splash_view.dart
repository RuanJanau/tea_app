import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../controller/splash_controller.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  var controller = Modular.get<SplashController>();

  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 4),
      () {
        if (!controller.isLogged()) {
          Modular.to.pushReplacementNamed('/login');
        } else {
          Modular.to.pushReplacementNamed('/home');
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Text('Tome cha viu.'),
    );
  }
}
