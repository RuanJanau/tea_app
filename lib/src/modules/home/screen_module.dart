import 'package:flutter_modular/flutter_modular.dart';
import 'package:tea_app/src/modules/home/view/screen_home.dart';

class ScreenModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const ScreenHome()),
      ];
}
