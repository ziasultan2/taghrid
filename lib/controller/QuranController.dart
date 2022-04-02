import 'package:app/model/AyahDetail.dart';
import 'package:app/model/JuzzModel.dart';
import 'package:app/model/QuranModel.dart';
import 'package:app/model/SearchModel.dart';
import 'package:app/model/SurahDetail.dart';
import 'package:app/model/SurahModel.dart';
import 'package:app/service/ApiProvider.dart';
import 'package:app/utils/network.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio/dio.dart';

class QuranController extends GetxController {
  ApiProvider api = ApiProvider();
  final quran = QuranModel().obs;
  final sura = SurahModel().obs;
  final search = SearchModel().obs;
  final page = QuranPageModel().obs;
  var identifier;
  final pageNumber = 1.obs;
  final ayahDetail = AyahDetail().obs;

  QuranController() {
    index();
  }

  index() async {
    var dio = Dio();
    var x = await dio.get(Network.quran);
    var data = QuranModel.fromJson(x.data);
    quran.value = data;
    getIdentifier();
  }

  getIdentifier() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    identifier = preferences.getString('identifier');
    pageNumber.value = preferences.getInt('page') ?? 1;
  }

  surah(id) async {
    print('surah id is $id');
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

  previous() {
    getJuzz(pageNumber.value - 1);
  }

  next() {
    getJuzz(pageNumber.value + 1);
  }

  getJuzz(id) async {
    api
        .get('http://api.alquran.cloud/v1/page/' +
            id.toString() +
            '/ar.abdurrahmaansudais')
        .then((r) async {
      print(r);
      page.value = QuranPageModel.fromJson(r);
    });
    setPage(id);
  }

  setPage(id) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setInt('page', id);
    pageNumber.value = id;
  }

  getDetail(id) {
    api
        .get('http://api.alquran.cloud/v1/ayah/' +
            id.toString() +
            '/editions/ar.abdurrahmaansudais,en.asad,' +
            identifier)
        .then((r) {
      print(r);
      ayahDetail.value = AyahDetail.fromJson(r);
    });
  }
}
