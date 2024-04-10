import 'package:flutter_modular/flutter_modular.dart';
import 'package:new_presentation/app/colors/defaultColors.dart';
import 'package:new_presentation/app/modules/components/main_app_bar.dart';
import 'package:new_presentation/app/modules/components/main_drawer.dart';
import 'package:new_presentation/app/modules/timeline/components/time.dart';
import 'package:new_presentation/app/modules/timeline/timeline_store.dart';
import 'package:flutter/material.dart';

class TimelinePage extends StatefulWidget {
  final String title;

  const TimelinePage({Key? key, this.title = 'TimelinePage'}) : super(key: key);

  @override
  TimelinePageState createState() => TimelinePageState();
}

class TimelinePageState extends State<TimelinePage> {
  final TimelineStore store = Modular.get();
  double _xOffset = -930;
  double _yOffset = -240;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MainAppBar(),
      drawer: null,
      body: Row(
        children: [
          MainDrawer(selectedIndex: 1),
          Expanded(
            child: GestureDetector(
              onPanUpdate: (details) {
                setState(() {
                  _xOffset += details.delta.dx;
                  _yOffset += details.delta.dy;
                });
              },
              child: Stack(
                children: [
                  Positioned(
                    left: _xOffset,
                    top: _yOffset,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 3,
                      height: MediaQuery.of(context).size.height * 3,
                      decoration: BoxDecoration(
                        color: ColorsD.transparent,
                        border: Border.all(
                          color: ColorsD.dark_green,
                          width: 2.0,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Time(
                                tittle: "Aprendiz",
                                imagesPaths: const [
                                  'assets/images/cmaa/timeline/apprencites/1.png',
                                  'assets/images/cmaa/timeline/apprencites/2.png',
                                  'assets/images/cmaa/timeline/apprencites/3.png',
                                  'assets/images/cmaa/timeline/apprencites/4.png',
                                  'assets/images/cmaa/timeline/apprencites/5.png',
                                  'assets/images/cmaa/timeline/apprencites/6.png',
                                  'assets/images/cmaa/timeline/apprencites/7.png',
                                  'assets/images/cmaa/timeline/apprencites/8.png',
                                  'assets/images/cmaa/timeline/apprencites/9.png',
                                  'assets/images/cmaa/timeline/apprencites/10.png',
                                ],
                              ),
                              Container(
                                width: 700,
                                height: 5,
                                color: ColorsD.black,
                              ),
                              Time(
                                tittle: "Testador",
                                imagesPaths: const [
                                  'assets/images/cmaa/timeline/tester/5.png',
                                  'assets/images/cmaa/timeline/tester/6.png',
                                  'assets/images/cmaa/timeline/tester/7.png',
                                  'assets/images/cmaa/timeline/tester/8.png',
                                  'assets/images/cmaa/timeline/tester/9.png',
                                  'assets/images/cmaa/timeline/tester/10.png',
                                ],
                              ),
                            ],
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 5,
                                  height: 500,
                                  color: ColorsD.black,
                                ),
                                const SizedBox(width: 1050),
                                Container(
                                  width: 5,
                                  height: 500,
                                  color: ColorsD.black,
                                ),
                              ]),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Time(
                                tittle: "Programador",
                                imagesPaths: const [
                                  'assets/images/cmaa/timeline/programmer/1.png',
                                  'assets/images/cmaa/timeline/programmer/2.png',
                                  'assets/images/cmaa/timeline/programmer/3.png',
                                  'assets/images/cmaa/timeline/programmer/4.png',
                                  'assets/images/cmaa/timeline/programmer/5.png',
                                  'assets/images/cmaa/timeline/programmer/6.png',
                                  'assets/images/cmaa/timeline/programmer/7.png',
                                  'assets/images/cmaa/timeline/programmer/8.png',
                                  'assets/images/cmaa/timeline/programmer/9.png',
                                  'assets/images/cmaa/timeline/programmer/10.png',
                                ],
                              ),
                              Container(
                                width: 700,
                                height: 5,
                                color: ColorsD.black,
                              ),
                              Time(
                                tittle: "Técnico",
                                imagesPaths: const [
                                  'assets/images/cmaa/timeline/technician/1.png',
                                  'assets/images/cmaa/timeline/technician/2.png',
                                  'assets/images/cmaa/timeline/technician/3.png',
                                  'assets/images/cmaa/timeline/technician/4.png',
                                  'assets/images/cmaa/timeline/technician/5.png',
                                  'assets/images/cmaa/timeline/technician/6.png',
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 120),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        height: 50,
                        color: ColorsD.white,
                        child: const Text(
                          'Linha do Tempo',
                          style: TextStyle(
                            color: ColorsD.black,
                            fontSize: 30,
                            fontFamily: "Calibri",
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
