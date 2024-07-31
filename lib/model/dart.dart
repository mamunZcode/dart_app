class Dart {
  List<Chapters>? _chapters;
  Dart({
      List<Chapters>? chapters,}){
    _chapters = chapters;
}

  Dart.fromJson(dynamic json) {
    if (json['chapters'] != null) {
      _chapters = [];
      json['chapters'].forEach((v) {
        _chapters?.add(Chapters.fromJson(v));
      });
    }
  }


  List<Chapters>? get chapters => _chapters;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_chapters != null) {
      map['chapters'] = _chapters?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Chapters {
  Chapters({
      String? id, 
      String? title, 
      String? primaryColor, 
      String? secondaryColor, 
      List<Questions>? questions,}){
    _id = id;
    _title = title;
    _primaryColor = primaryColor;
    _secondaryColor = secondaryColor;
    _questions = questions;
}

  Chapters.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _primaryColor = json['primaryColor'];
    _secondaryColor = json['secondaryColor'];
    if (json['questions'] != null) {
      _questions = [];
      json['questions'].forEach((v) {
        _questions?.add(Questions.fromJson(v));
      });
    }
  }
  String? _id;
  String? _title;
  String? _primaryColor;
  String? _secondaryColor;
  List<Questions>? _questions;

  String? get id => _id;
  String? get title => _title;
  String? get primaryColor => _primaryColor;
  String? get secondaryColor => _secondaryColor;
  List<Questions>? get questions => _questions;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['primaryColor'] = _primaryColor;
    map['secondaryColor'] = _secondaryColor;
    if (_questions != null) {
      map['questions'] = _questions?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Questions {
  Questions({
      int? id, 
      String? title,}){
    _id = id;
    _title = title;
}

  Questions.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
  }
  int? _id;
  String? _title;

  int? get id => _id;
  String? get title => _title;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    return map;
  }

}