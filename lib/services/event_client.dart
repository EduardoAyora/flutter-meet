import 'dart:convert';

import 'package:flutter_meet2go/model/event_model.dart';
import 'package:http/http.dart';

class EventClient {
  String endpoint = 'https://app.meet2go.com/items/events';

  Future<List<EventModel>> getMovies() async {
    Response response = await get(Uri.parse(endpoint));
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body)['data'];
      return result.map((event) => EventModel.fromJson(event)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }

  Future<List<EventModel>> getMoviesByText(String text) async {
    Response response = await get(Uri.parse('$endpoint\?search=$text'));
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body)['data'];
      return result.map((event) => EventModel.fromJson(event)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
