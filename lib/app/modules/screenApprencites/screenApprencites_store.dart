import 'package:mobx/mobx.dart';

part 'screenApprencites_store.g.dart';

class ScreenApprencitesStore = _ScreenApprencitesStoreBase with _$ScreenApprencitesStore;
abstract class _ScreenApprencitesStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}