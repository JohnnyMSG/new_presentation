import 'package:flutter_modular/flutter_modular.dart';
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
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}