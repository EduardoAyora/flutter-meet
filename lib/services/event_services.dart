import 'dart:convert';

import 'package:flutter_meet2go/model/event_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart';

class EventApiServices {
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
}

final eventProvider = Provider<EventApiServices>((ref) => EventApiServices());