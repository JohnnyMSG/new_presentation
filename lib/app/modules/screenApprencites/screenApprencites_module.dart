import 'package:new_presentation/app/modules/screenApprencites/screenApprencites_page.dart';
import 'package:new_presentation/app/modules/screenApprencites/screenApprencites_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ScreenApprencitesModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.factory((i) => ScreenApprencitesStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/apprencites', child: (_, args) => const ScreenApprencitesPage()),
  ];
}
