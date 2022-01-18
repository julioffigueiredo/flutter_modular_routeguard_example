import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_routeguard_example/app/modules/second_screen/second_screen_module.dart';
import '../home/home_store.dart';

import 'home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => HomePage()),
    ModuleRoute('/second', module: SecondScreenModule(), guards: [AuthGuard()]),
  ];
}

class AuthGuard extends RouteGuard {
  AuthGuard() : super(redirectTo: '/');

  @override
  Future<bool> canActivate(String path, ModularRoute route) {
    return Future.value(false);
  }
}
