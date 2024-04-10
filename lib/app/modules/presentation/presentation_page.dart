import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:new_presentation/app/colors/defaultColors.dart';
import 'package:new_presentation/app/modules/components/main_app_bar.dart';
import 'package:new_presentation/app/modules/components/main_drawer.dart';
import 'package:new_presentation/app/modules/presentation/presentation_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';

class PresentationPage extends StatefulWidget {
  final String title;

  const PresentationPage({Key? key, this.title = 'PresentationPage'}) : super(key: key);

  @override
  PresentationPageState createState() => PresentationPageState();
}

class PresentationPageState extends State<PresentationPage> {
  final PresentationStore _store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        return Stack(
          children: [
            !_store.fullScreen
                ? Scaffold(
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
                            child: const Center(
                                child: HtmlWidget(
                                    '''<iframe src="https://valedotijuco-my.sharepoint.com/personal/johnny_gouveia_cmaa_ind_br/_layouts/15/Doc.aspx?sourcedoc={613956b1-0745-4de4-a0c5-257549087b1c}&amp;action=embedview&amp;wdAr=1.7770833333333333" width="476px" height="288px" frameborder="0">Este é um apresentação do <a target="_blank" href="https://office.com">Microsoft Office</a> incorporado, da plataforma <a target="_blank" href="https://office.com/webapps">Office</a>.</iframe>''')),
                          ),
                        ),
                      ],
                    ),
                  )
                : const Center(
                    child: HtmlWidget(
                        '''<iframe src="https://valedotijuco-my.sharepoint.com/personal/johnny_gouveia_cmaa_ind_br/_layouts/15/Doc.aspx?sourcedoc={613956b1-0745-4de4-a0c5-257549087b1c}&amp;action=embedview&amp;wdAr=1.7770833333333333" width="476px" height="288px" frameborder="0">Este é um apresentação do <a target="_blank" href="https://office.com">Microsoft Office</a> incorporado, da plataforma <a target="_blank" href="https://office.com/webapps">Office</a>.</iframe>''')),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: () {
                    _store.isFullScreen();
                  },
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(ColorsD.transparent),
                    backgroundColor: MaterialStateProperty.all(ColorsD.transparent),
                    overlayColor: MaterialStateProperty.all(ColorsD.transparent),
                    shadowColor: MaterialStateProperty.all(ColorsD.transparent),
                    surfaceTintColor: MaterialStateProperty.all(ColorsD.transparent),
                    padding: MaterialStateProperty.all(EdgeInsets.zero),
                  ),
                  child: Observer(
                    builder: (context) {
                      return Tooltip(
                        message: !_store.fullScreen ? "Tela cheia" : "Tirar tela cheia",
                        child: Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: ColorsD.dark_green.withOpacity(0.8),
                          ),
                          child: Icon(
                            !_store.fullScreen ? Icons.fullscreen : Icons.fullscreen_exit_sharp,
                            color: ColorsD.white,
                          ),
                        ),
                      );
                    }
                  ),
                ),
              ),
            ),

          ],
        );
      }
    );
  }
}
