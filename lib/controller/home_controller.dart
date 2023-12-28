import 'package:get/get.dart';

class HomeController extends GetxController {
  Rx<int> count = 0.obs;

  increment() {
    count.value++;
  }

  @override
  void onInit() {
    print(count.value);
    print("homeview");
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    print(count.value);
    print("closing screen");
    super.onClose();
  }
}
