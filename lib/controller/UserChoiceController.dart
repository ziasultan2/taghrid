import 'package:app/model/LanguageJson.dart';
import 'package:app/model/LanguageModel.dart';
import 'package:app/service/ApiProvider.dart';
import 'package:app/view/quran/SurahListUI.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserChoiceController extends GetxController {
  ApiProvider api = ApiProvider();
  var language = LanguageModel().obs;
  UserChoiceController() {
    index();
  }

  index() async {
    language.value = LanguageModel.fromJson(data);
  }

  save(identifier, language) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool('selected', true);
    preferences.setString('language', language);
    preferences.setString('identifier', identifier);
    Get.to(SurahListUI());
  }
}
