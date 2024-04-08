import 'package:flutter_modular/flutter_modular.dart';
import 'package:new_presentation/app/modules/apprencites/apprencites_module.dart';
import 'package:new_presentation/app/modules/rules/rules_module.dart';
import 'package:new_presentation/app/modules/timeline/timeline_module.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: HomeModule()),
    ModuleRoute('/', module: ApprencitesModule()),
    ModuleRoute('/', module: TimelineModule()),
    ModuleRoute('/', module: RulesModule()),
  ];

}