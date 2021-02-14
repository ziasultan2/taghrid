import 'package:app/model/ChapterModel.dart';
import 'package:app/model/HadithListModel.dart';
import 'package:app/model/HadithModel.dart';
import 'package:app/service/ApiProvider.dart';
import 'package:get/get.dart';

class HadithController extends GetxController {
  ApiProvider api = ApiProvider();
  final hadith = HadithModel().obs;
  final chapterList = ChapterModel().obs;
  final hadithList = HadithListModel().obs;

  HadithController() {
    index();
  }
  index() {
    api.get('https://ahadith-api.herokuapp.com/api/books/en').then((r) async {
      HadithModel h = HadithModel.fromJson(r);
      hadith.value = h;
    });
  }

  chapter(id) {
    api
        .get('https://ahadith-api.herokuapp.com/api/chapter/' +
            id.toString() +
            '/en')
        .then((x) async {
      chapterList.value = ChapterModel.fromJson(x);
    });
  }

  listOfHadith(bookId, chapterId) {
    api
        .get('https://ahadith-api.herokuapp.com/api/ahadith/' +
            bookId.toString() +
            '/' +
            chapterId.toString() +
            '/en')
        .then((x) async {
      hadithList.value = HadithListModel.fromJson(x);
    });
  }
}
