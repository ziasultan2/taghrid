class HadithModel {
  int code;
  List<Books> books;

  HadithModel({this.books});

  HadithModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    if (json['Books'] != null) {
      books = new List<Books>();
      json['Books'].forEach((v) {
        books.add(new Books.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.books != null) {
      data['Books'] = this.books.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Books {
  int bookID;
  String bookName;

  Books({this.bookID, this.bookName});

  Books.fromJson(Map<String, dynamic> json) {
    bookID = json['Book_ID'];
    bookName = json['Book_Name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Book_ID'] = this.bookID;
    data['Book_Name'] = this.bookName;
    return data;
  }
}
