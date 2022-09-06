import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  int counter = 0;
  increment() {
    counter++;
    print(counter);
    notifyListeners();
  }
}
