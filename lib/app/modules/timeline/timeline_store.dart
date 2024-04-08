import 'package:mobx/mobx.dart';

part 'timeline_store.g.dart';

class TimelineStore = _TimelineStoreBase with _$TimelineStore;
abstract class _TimelineStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}