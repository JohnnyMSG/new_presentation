import 'package:flutter_modular/flutter_modular.dart';
import 'package:new_presentation/app/colors/defaultColors.dart';
import 'package:new_presentation/app/modules/components/main_app_bar.dart';
import 'package:new_presentation/app/modules/components/main_drawer.dart';
import 'package:new_presentation/app/modules/rules/components/rule_life.dart';
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
              color: ColorsD.transparent,
              child: Stack(
                children: [
                  ListView(
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 120),
                        child: Text(
                          'Regras Pela Vida',
                          style: TextStyle(
                              color: ColorsD.black, fontSize: 30, fontFamily: "Calibri", fontWeight: FontWeight.w100),
                        ),
                      ),

                      Align(
                        alignment: Alignment.center,
                        child: Wrap(
                          children: [
                            RuleLife(
                              icon: Container(
                                width: 85,
                                height: 85,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/cmaa/regrasPelaVida/1.png'),
                                  ),
                                ),
                              ),
                              tittle: 'Atender permissão de trabalho',
                              message: "Quem arrisca, não previne",
                            ),

                            RuleLife(
                              icon: Container(
                                width: 85,
                                height: 85,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/cmaa/regrasPelaVida/2.png'),
                                  ),
                                ),
                              ),
                              tittle: 'Utilizar todos os EPIs',
                              message: "Quem é vivo sempre se protege",
                            ),

                            RuleLife(
                              icon: Container(
                                width: 85,
                                height: 85,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/cmaa/regrasPelaVida/3.png'),
                                  ),
                                ),
                              ),
                              tittle: 'Bloquear energias perigosas',
                              message: "Eu dou block em energias perigosas",
                            ),

                            RuleLife(
                              icon: Container(
                                width: 85,
                                height: 85,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/cmaa/regrasPelaVida/4.png'),
                                  ),
                                ),
                              ),
                              tittle: 'Trabalhar seguro em altura e espaço confinado',
                              message: "Quanto maior o risco, maior a atenção",
                            ),

                            RuleLife(
                              icon: Container(
                                width: 85,
                                height: 85,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/cmaa/regrasPelaVida/5.png'),
                                  ),
                                ),
                              ),
                              tittle: 'Dirigir de forma segura',
                              message: "A pressa é inimiga da segurança",
                            ),

                            RuleLife(
                              icon: Container(
                                width: 85,
                                height: 85,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/cmaa/regrasPelaVida/6.png'),
                                  ),
                                ),
                              ),
                              tittle: 'Prevenir os incêndios',
                              message: "Onde não há fumaça, há atenção",
                            ),

                            RuleLife(
                              icon: Container(
                                width: 85,
                                height: 85,
                                decoration: const BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/images/cmaa/regrasPelaVida/7.png'),
                                  ),
                                ),
                              ),
                              tittle: 'Comunicar todos os acidentes',
                              message: "Quem cala, consente com o acidente",
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
