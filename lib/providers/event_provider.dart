import 'package:flutter_meet2go/model/event_model.dart';
import 'package:flutter_meet2go/services/event_services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final eventDataProvider = FutureProvider<List<EventModel>>((ref) async {
  return ref.watch(eventProvider).getMovies();
});
