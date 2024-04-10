import 'package:flutter_modular/flutter_modular.dart';
import 'package:new_presentation/app/colors/defaultColors.dart';
import 'package:new_presentation/app/modules/components/main_app_bar.dart';
import 'package:new_presentation/app/modules/components/main_drawer.dart';
import 'package:new_presentation/app/modules/presentation/presentation_store.dart';
import 'package:flutter/material.dart';
import 'package:webview_universal/webview_universal.dart';

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
    _store.webView(context, setState, 'https://flutter.dev/');
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
              child: WebView(
                controller: _store.webViewController,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
