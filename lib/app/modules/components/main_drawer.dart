import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:new_presentation/app/colors/defaultColors.dart';

class MainDrawer extends StatefulWidget implements PreferredSizeWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  State<MainDrawer> createState() => _MainDrawerState();

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

class _MainDrawerState extends State<MainDrawer> {
  final int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      child: NavigationRail(
        elevation: 20,
        backgroundColor: ColorsD.white,
        selectedIndex: _selectedIndex,
        onDestinationSelected: (i) {
          i == 0
              ? Modular.to.navigate("/apprencites")
              : i == 1
                  ? Modular.to.navigate("/timeline")
                  : Modular.to.navigate("/rule");
        },
        destinations: const <NavigationRailDestination>[
          NavigationRailDestination(
            icon: Icon(Icons.people_alt_sharp),
            label: Text("Aprendizes"),
          ),
          NavigationRailDestination(
            icon: Icon(Icons.date_range_rounded),
            label: Text("Linha do tempo"),
          ),
          NavigationRailDestination(
            icon: Icon(Icons.rule_sharp),
            label: Text("Regras pela Vida"),
          ),
        ],
      ),
    );
  }
}
