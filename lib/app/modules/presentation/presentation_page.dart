import 'package:flutter_modular/flutter_modular.dart';
import 'package:new_presentation/app/colors/defaultColors.dart';
import 'package:new_presentation/app/modules/components/main_app_bar.dart';
import 'package:new_presentation/app/modules/components/main_drawer.dart';
import 'package:new_presentation/app/modules/presentation/presentation_store.dart';
import 'package:flutter/material.dart';

class PresentationPage extends StatefulWidget {
  final String title;

  const PresentationPage({Key? key, this.title = 'PresentationPage'}) : super(key: key);

  @override
  PresentationPageState createState() => PresentationPageState();
}

class PresentationPageState extends State<PresentationPage> {

  @override
  Widget build(BuildContext context) {
    /*_store.webView(context, setState,
        "https://flutter.dev/");*/
    return Scaffold(
      appBar: const MainAppBar(),
      drawer: null,
      body: Row(
        children: [
          MainDrawer(selectedIndex: 3),
          Expanded(
            child: Container(
              height: double.infinity,
              width: double.infinity,
              color: ColorsD.transparent,
              child: Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/cmaa/presentation/slide1.png'),
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),

                  ///Botões
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {

                            },
                            child: Container(
                              width: 70,
                              height: 40,
                              decoration: BoxDecoration(
                                color: ColorsD.medium_blue,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Icon(
                                Icons.fullscreen,
                                color: ColorsD.white,
                                size: 30,
                              ),
                            ),
                          ),
                        ],
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
