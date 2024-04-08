import 'package:new_presentation/app/modules/timeline/timeline_page.dart';
import 'package:new_presentation/app/modules/timeline/timeline_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TimelineModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => TimelineStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/timeline', child: (_, args) => TimelinePage()),
  ];
}
