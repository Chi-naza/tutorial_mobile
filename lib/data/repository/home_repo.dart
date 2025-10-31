import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:new_app/model/cat_facts_model.dart';

class HomeRepo {
  static Future<CatFactsModel?> fetchMyCatFacts() async {
    try {
      var url = Uri.parse("https://rickandmortyapi.com/api/character/108");

      var response = await http.get(url);

      var data = jsonDecode(response.body);

      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');

      var catsFormatted = CatFactsModel.fromJson(data);

      print('CATS FORMATTED: $catsFormatted');
      return catsFormatted;
    } catch (e) {
      print("Error: $e");
      return null;
    }
  }
}
