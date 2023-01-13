import 'package:mobx/mobx.dart';

part 'intro_view_model.g.dart';

class IntroViewModel = IntroViewModelBase with _$IntroViewModel;

abstract class IntroViewModelBase with Store {
  @observable
  int page = 0;

  @action
  void pageStatus(int value) {
    page = value;
  }
}
