import 'package:new_presentation/app/modules/apprencites/apprencites_page.dart';
import 'package:new_presentation/app/modules/apprencites/apprencites_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ApprencitesModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.factory((i) => ApprencitesStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/apprencites', child: (_, args) => const ApprencitesPage()),
  ];
}
