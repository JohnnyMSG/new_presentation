import 'package:mobx/mobx.dart';
import 'package:url_launcher/url_launcher.dart';

part 'apprencites_store.g.dart';

class ApprencitesStore = _ApprencitesStoreBase with _$ApprencitesStore;
abstract class _ApprencitesStoreBase with Store {

  @action
  Future<void> openUrl() async {
    const url = 'https://flutterando.com.br/';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }
}