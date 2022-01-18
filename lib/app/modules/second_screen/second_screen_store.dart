import 'package:mobx/mobx.dart';

part 'second_screen_store.g.dart';

class SecondScreenStore = _SecondScreenStoreBase with _$SecondScreenStore;

abstract class _SecondScreenStoreBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
