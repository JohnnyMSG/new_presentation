import 'package:mobx/mobx.dart';

part 'presentation_store.g.dart';

class PresentationStore = _PresentationStoreBase with _$PresentationStore;
abstract class _PresentationStoreBase with Store {

  @observable
  bool fullScreen = false;

  @action
  void isFullScreen() {
    fullScreen = !fullScreen;
  }

}