import 'package:flutter_modular/flutter_modular.dart';
import 'package:new_presentation/app/colors/defaultColors.dart';
import 'package:new_presentation/app/modules/components/main_app_bar.dart';
import 'package:new_presentation/app/modules/components/main_drawer.dart';
import 'package:new_presentation/app/modules/rules/rules_store.dart';
import 'package:flutter/material.dart';

class RulesPage extends StatefulWidget {
  final String title;
  const RulesPage({Key? key, this.title = 'RulesPage'}) : super(key: key);
  @override
  RulesPageState createState() => RulesPageState();
}
class RulesPageState extends State<RulesPage> {
  final RulesStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(),
      drawer: null,
      body: Row(
        children: [
          MainDrawer(selectedIndex: 2),
          Expanded(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              color: ColorsD.dark_green,
            ),
          ),
        ],
      ),
    );
  }
}