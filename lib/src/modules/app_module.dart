import 'package:flutter_modular/flutter_modular.dart';
import 'package:tea_app/src/modules/home/screen_module.dart';
import 'package:tea_app/src/modules/splash/view/splash_view.dart';

import 'splash/controller/splash_controller.dart';

class AppModule extends Module {
  @override
  List<Bind> get binds => [
        Bind((i) => SplashController()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const SplashView()),
        ModuleRoute('/login', module: ScreenModule()),
      ];
}
