import 'package:app/model/JuzzModel.dart';
import 'package:app/model/QuranModel.dart';
import 'package:app/model/SearchModel.dart';
import 'package:app/model/SurahModel.dart';
import 'package:app/service/ApiProvider.dart';
import 'package:app/utils/network.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class QuranController extends GetxController {
  ApiProvider api = ApiProvider();
  final quran = QuranModel().obs;
  final sura = SurahModel().obs;
  final search = SearchModel().obs;
  final juzz = JuzzModel().obs;

  QuranController() {
    index();
  }

  index() {
    api.get(Network.quran).then((x) async {
      var data = QuranModel.fromJson(x);
      quran.value = data;
    });
  }

  surah(id) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var identifier = preferences.getString('identifier');
    String path = Network.base +
        'surah/' +
        id.toString() +
        '/editions/ar.abdurrahmaansudais,en.transliteration,' +
        identifier;
    api.get(path).then((x) async {
      print(x);
      sura.value = SurahModel.fromJson(x);
    });
  }

  searchWord(keyword) {
    api
        .get('http://api.alquran.cloud/v1/search/' + keyword + '/all/en')
        .then((r) async {
      search.value = SearchModel.fromJson(r);
    });
  }

  getJuzz(id) {
    api
        .get('http://api.alquran.cloud/v1/juz/' +
            id.toString() +
            '/ar.saoodshuraym')
        .then((r) async {
      print(r);
      juzz.value = JuzzModel.fromJson(r);
    });
  }
}
