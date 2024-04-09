import 'package:new_presentation/app/modules/presentation/presentation_page.dart';
import 'package:new_presentation/app/modules/presentation/presentation_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class PresentationModule extends Module {
  @override
  final List<Bind> binds = [Bind.lazySingleton((i) => PresentationStore()),];

  @override
  final List<ModularRoute> routes = [ChildRoute('/presentation', child: (_, args) => PresentationPage()),];

}