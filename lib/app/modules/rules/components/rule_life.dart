import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:new_presentation/app/colors/defaultColors.dart';
import 'package:new_presentation/app/modules/rules/rules_store.dart';

class RuleLife extends StatelessWidget {
  Widget? icon;
  String? tittle;

  RuleLife({
    Key? key,
    this.icon,
    this.tittle,
  }) : super(key: key);
  final RulesStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {

            },
            child: Tooltip(
              message: tittle!.toUpperCase(),
              child: Container(
                  width: MediaQuery.of(context).size.width * 0.25,
                  height: MediaQuery.of(context).size.height * 0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: ColorsD.dark_green_more_ight,
                  ),
                  child: icon!),
            ),
          ),
          /*Container(
            width: MediaQuery.of(context).size.width * 0.6,
            height: MediaQuery.of(context).size.height * 0.16,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
              color: ColorsD.dark_green,
            ),
            child: Center(
              child: Text(
                tittle!.toUpperCase(),
                style: const TextStyle(color: ColorsD.white, fontSize: 18, fontWeight: FontWeight.w900),
              ),
            ),
          ),*/
        ],
      ),
    );
  }
}
