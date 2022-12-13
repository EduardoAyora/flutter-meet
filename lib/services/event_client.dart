import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_meet2go/model/event_model.dart';
import 'package:http/http.dart';

class SearchedEventsClient extends ChangeNotifier {
  List<EventModel> _searchedEvents = [];
  bool _isSearchLoading = false;

  List<EventModel> get searchedEvents => _searchedEvents;
  bool get isSearchLoading => _isSearchLoading;

  String endpoint = 'https://app.meet2go.com/items/events';

  searchEvents(String text) async {
    _isSearchLoading = true;
    notifyListeners();
    Response response = await get(Uri.parse('$endpoint\?search=$text'));
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body)['data'];
      _searchedEvents =
          result.map((event) => EventModel.fromJson(event)).toList();
      _isSearchLoading = false;
      notifyListeners();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }

  resetSearchedEvents() {
    _searchedEvents = [];
    notifyListeners();
  }
}

class AllEventsClient extends ChangeNotifier {
  String endpoint = 'https://app.meet2go.com/items/events';

  Future<List<EventModel>> getEvents() async {
    Response response = await get(Uri.parse(endpoint));
    if (response.statusCode == 200) {
      final List result = jsonDecode(response.body)['data'];
      return result.map((event) => EventModel.fromJson(event)).toList();
    } else {
      throw Exception(response.reasonPhrase);
    }
  }
}
