import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:new_presentation/app/colors/defaultColors.dart';

class MainDrawer extends StatefulWidget implements PreferredSizeWidget {
  int selectedIndex;

  MainDrawer({
    Key? key,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  State<MainDrawer> createState() => _MainDrawerState();

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

class _MainDrawerState extends State<MainDrawer> {
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
        selectedIndex: widget.selectedIndex,
        useIndicator: true,
        indicatorColor: ColorsD.dark_green.withOpacity(0.7),
        onDestinationSelected: (i) {
          i == 0
              ? Modular.to.navigate("/apprencites")
              : i == 1
                  ? Modular.to.navigate("/timeline")
                  : i == 2
                      ? Modular.to.navigate("/rule")
                      : Modular.to.navigate("/presentation");
        },
        destinations: <NavigationRailDestination>[
          NavigationRailDestination(
            icon: Icon(
              Icons.people_alt_sharp,
              color: widget.selectedIndex == 0 ? ColorsD.white : ColorsD.black,
            ),
            label: const Text("Aprendizes"),
          ),
          NavigationRailDestination(
            icon: Icon(
              Icons.date_range_rounded,
              color: widget.selectedIndex == 1 ? ColorsD.white : ColorsD.black,
            ),
            label: const Text("Linha do tempo"),
          ),
          NavigationRailDestination(
            icon: Icon(
              Icons.rule_sharp,
              color: widget.selectedIndex == 2 ? ColorsD.white : ColorsD.black,
            ),
            label: const Text("Regras pela Vida"),
          ),
          NavigationRailDestination(
            icon: Icon(
              Icons.airplay,
              color: widget.selectedIndex == 3 ? ColorsD.white : ColorsD.black,
            ),
            label: const Text("Apresentação"),
          ),
        ],
      ),
    );
  }
}
