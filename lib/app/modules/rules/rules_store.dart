import 'package:mobx/mobx.dart';

part 'rules_store.g.dart';

class RulesStore = _RulesStoreBase with _$RulesStore;
abstract class _RulesStoreBase with Store {

  @observable
  bool isExpanded = false;

  @action
  void expanded() {
    isExpanded = !isExpanded;
  }
}