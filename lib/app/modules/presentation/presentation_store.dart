import 'package:mobx/mobx.dart';

part 'presentation_store.g.dart';

class PresentationStore = _PresentationStoreBase with _$PresentationStore;
abstract class _PresentationStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}