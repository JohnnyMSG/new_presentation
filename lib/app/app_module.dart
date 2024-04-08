import 'package:flutter_modular/flutter_modular.dart';
import 'package:new_presentation/app/modules/apprencites/apprencites_module.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: HomeModule()),
    ModuleRoute('/', module: ApprencitesModule()),
  ];

}