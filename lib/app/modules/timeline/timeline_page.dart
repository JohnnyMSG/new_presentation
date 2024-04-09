import 'package:flutter_modular/flutter_modular.dart';
import 'package:new_presentation/app/colors/defaultColors.dart';
import 'package:new_presentation/app/modules/components/main_app_bar.dart';
import 'package:new_presentation/app/modules/components/main_drawer.dart';
import 'package:new_presentation/app/modules/timeline/components/month.dart';
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
  double _xOffset = -1100;
  double _yOffset = -450;

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
                      width: MediaQuery.of(context).size.width * 5,
                      height: MediaQuery.of(context).size.height * 5,
                      decoration: BoxDecoration(
                        color: ColorsD.transparent,
                        border: Border.all(
                          color: ColorsD.dark_green,
                          width: 2.0,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Month(
                            month: "Dezembro - 2022",
                          ),
                          Month(
                            month: "Janeiro - 2023",
                          ),
                          Month(
                            month: "Fevereiro - 2023",
                          ),
                          Month(
                            month: "Março - 2023",
                          ),
                          Month(
                            month: "Abril - 2023",
                          ),
                          Month(
                            month: "Maio - 2023",
                          ),
                          Month(
                            month: "Junho - 2023",
                          ),
                          Month(
                            month: "Julho - 2023",
                          ),
                          Month(
                            month: "Agosto - 2023",
                          ),
                          Month(
                            month: "Setembro - 2023",
                          ),
                          Month(
                            month: "Outubro - 2023",
                          ),
                          Month(
                            month: "Novembro - 2023",
                          ),
                          Month(
                            month: "Dezembro - 2023",
                          ),
                          Month(
                            month: "Janeiro - 2024",
                          ),
                          Month(
                            month: "Fevereiro - 2024",
                          ),
                          Month(
                            month: "Março - 2024",
                          ),
                          Month(
                            month: "Abril - 2024",
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
