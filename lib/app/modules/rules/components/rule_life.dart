import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:new_presentation/app/colors/defaultColors.dart';
import 'package:new_presentation/app/modules/rules/rules_store.dart';

class RuleLife extends StatelessWidget {
  Widget? icon;
  String? tittle;
  String? message;

  RuleLife({
    Key? key,
    this.icon,
    this.tittle,
    this.message,
  }) : super(key: key);
  final RulesStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return Padding(
        padding: const EdgeInsets.all(10),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            store.isExpanded
                ? Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: ColorsD.dark_green3,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10, left: 10, top: 130),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(15),
                                child: Text(
                                  message!.toUpperCase(),
                                  style: const TextStyle(
                                    color: ColorsD.white,
                                    fontSize: 40,
                                  ),
                                ),
                              )
                            ],
                          ),
                        )),
                  )
                : Container(),
            Align(
              alignment: Alignment.topCenter,
              child: InkWell(
                onTap: () {
                  store.expanded();
                },
                hoverColor: ColorsD.transparent,
                splashColor: ColorsD.transparent,
                focusColor: ColorsD.transparent,
                highlightColor: ColorsD.transparent,
                overlayColor: MaterialStateProperty.all(ColorsD.transparent),

                child: Tooltip(
                  message: tittle!.toUpperCase(),
                  child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 100,
                      decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(20),
                        borderRadius: BorderRadius.only(
                          topLeft: const Radius.circular(20),
                          topRight: const Radius.circular(20),
                          bottomLeft: store.isExpanded ? Radius.zero : const Radius.circular(20),
                          bottomRight: store.isExpanded ? Radius.zero : const Radius.circular(20),
                        ),
                        color: ColorsD.dark_green_more_light,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10),
                              child: icon!,
                            ),
                          ),
                          Center(
                            child: Container(
                              width: 5,
                              height: 90,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: ColorsD.dark_green3,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15),
                            child: Text(
                              tittle!,
                              style: const TextStyle(
                                color: ColorsD.black,
                                fontSize: 25,
                              ),
                            ),
                          )
                        ],
                      )),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
