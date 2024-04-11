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
                              tip: "Quem arrisca, não previne",
                              message: "Antes de iniciar uma atividade, é importante obter uma permissão de trabalho, que é uma autorização formal para realizar determinada tarefa. Isso ajuda a garantir que os procedimentos corretos sejam seguidos e que os riscos sejam devidamente avaliados e mitigados.",
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
                              tip: "Quem é vivo sempre se protege",
                              message: "Os EPIs são itens essenciais para proteger os trabalhadores de diversos riscos no ambiente de trabalho, como lesões, exposição a substâncias perigosas, entre outros. É fundamental que todos os funcionários usem os EPIs adequados para a atividade que estão realizando.",
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
                              tip: "Eu dou block em energias perigosas",
                              message: "Antes de realizar qualquer tipo de manutenção ou reparo em equipamentos ou máquinas, é necessário bloquear todas as fontes de energia que possam representar um perigo para os trabalhadores. Isso evita acidentes graves, como choques elétricos ou aprisionamentos.",
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
                              tip: "Quanto maior o risco, maior a atenção",
                              message: "Trabalhos em altura e espaços confinados apresentam riscos específicos que exigem medidas de segurança especiais. É fundamental seguir protocolos rigorosos para garantir a segurança dos trabalhadores nessas situações, incluindo o uso de equipamentos de proteção adequados e a supervisão adequada.",
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
                              tip: "A pressa é inimiga da segurança",
                              message: "Para aqueles que precisam dirigir como parte de suas atividades de trabalho, é crucial seguir todas as normas de trânsito e adotar práticas de direção defensiva. Isso não apenas protege o próprio motorista, mas também outras pessoas na estrada.",
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
                              tip: "Onde não há fumaça, há atenção",
                              message: "A prevenção de incêndios é uma preocupação importante em qualquer ambiente de trabalho. Isso inclui medidas como manter saídas de emergência desobstruídas, realizar inspeções regulares nos sistemas de detecção e combate a incêndios, e fornecer treinamento adequado para os funcionários sobre como agir em caso de emergência.",
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
                              tip: "Quem cala, consente com o acidente",
                              message: "É essencial relatar todos os acidentes, mesmo os mais pequenos, para que as causas subjacentes possam ser identificadas e corrigidas. Isso contribui para a melhoria contínua da segurança no local de trabalho e ajuda a prevenir futuros incidentes.",
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
