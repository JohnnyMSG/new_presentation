import 'package:mobx/mobx.dart';

part 'rules_store.g.dart';

class RulesStore = _RulesStoreBase with _$RulesStore;
abstract class _RulesStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}