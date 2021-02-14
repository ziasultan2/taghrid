import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TasbihController extends GetxController {
  final limit = 0.obs;
  TasbihController() {
    index();
  }

  index() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    limit.value = preferences.getInt('tasbih') ?? 0;
  }

  increment() {
    limit.value++;
  }

  exit() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setInt('tasbih', limit.value);
    Get.back();
  }

  reset() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setInt('tasbih', 0);
    limit.value = 0;
  }
}
