import 'package:new_presentation/app/modules/rules/rules_page.dart';
import 'package:new_presentation/app/modules/rules/rules_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class RulesModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => RulesStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/rule', child: (_, args) => RulesPage()),
  ];
}
