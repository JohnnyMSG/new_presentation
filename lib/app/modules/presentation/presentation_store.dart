import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:mobx/mobx.dart';
import 'package:webview_universal/webview_controller/webview_controller.dart';

part 'presentation_store.g.dart';

class PresentationStore = _PresentationStoreBase with _$PresentationStore;
abstract class _PresentationStoreBase with Store {

  WebViewController webViewController = WebViewController();

  Future<void> webView(BuildContext context, Function(void Function()) setState, String link) async {
    try {
      webViewController.init(
        context: context,
        setState: setState,
        uri: Uri.parse(link),
      );
    } on Exception catch (_, e) {
      if (kDebugMode) {
        print(e);
      }
    }
  }

}