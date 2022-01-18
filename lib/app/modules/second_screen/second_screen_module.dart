import 'package:modular_routeguard_example/app/modules/second_screen/second_screen_Page.dart';
import 'package:modular_routeguard_example/app/modules/second_screen/second_screen_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SecondScreenModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => SecondScreenStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => SecondScreenPage()),
  ];
}
