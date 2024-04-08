import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:new_presentation/app/colors/defaultColors.dart';

class MainAppBar extends StatefulWidget implements PreferredSizeWidget {
  const MainAppBar({Key? key}) : super(key: key);

  @override
  State<MainAppBar> createState() => _MainAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(60);
}

class _MainAppBarState extends State<MainAppBar> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: ColorsD.dark_green,
      title: const Row(children: [
        Text(
          "CMAA ",
          style: TextStyle(
            fontFamily: "AspireSCRegular",
            fontSize: 25,
            color: ColorsD.white,
          ),
        ),
        Flexible(
          child: Text(
            "Companhia Mineira de Açúcar e Álcool",
            style: TextStyle(
              fontFamily: "AspireSCLight",
              fontSize: 20,
              color: ColorsD.white,
            ),
          ),
        )
      ]),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: InkWell(
            onTap: () {
              Modular.to.navigate("/");
            },
            child: const Icon(
              Icons.exit_to_app_sharp,
              color: ColorsD.white,
              size: 30,
            ),
          ),
        )
      ],
    );
  }
}
