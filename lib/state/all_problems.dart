
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

import '../model/dart.dart';
import '../model/problems.dart';

class AllProblems extends ChangeNotifier {
  Dart? problems;

  Dart? get getProblems => problems;

  AllProblems() {
    loadData();
  }

  loadData() async {
    debugPrint('loadData');
    String jsonString = await rootBundle.loadString('assets/dart.json');
    final Map<String, dynamic> jsonData = json.decode(jsonString);
    problems = Dart.fromJson(jsonData);
    notifyListeners();
  }
}
