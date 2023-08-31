import 'dart:convert';

import 'package:http/http.dart' as http;

import '../models/salon.dart';

class SalonProvider {
  final url = "https://www.datos.gov.co/resource/e27n-di57.json";
  Future<List<Salon>> fetchAllSalon(int page) async {
    final response = await http
        .get(Uri.parse('$url?\$limit=30&\$offset=${(page - 1) + 30}'));
    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      String body = utf8.decode(response.bodyBytes);
      final jsonData = jsonDecode(body);
      final salons = ListSalon.fromJsonList(jsonData);
      return salons.items;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception("Ocurrio Algo ${response.statusCode}");
    }
  }
}
