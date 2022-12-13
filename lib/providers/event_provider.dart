import 'package:flutter_meet2go/model/event_model.dart';
import 'package:flutter_meet2go/services/event_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final eventClientProvider = Provider<EventClient>((ref) => EventClient());

final allEventsFutureProvider = FutureProvider<List<EventModel>>((ref) async {
  return ref.watch(eventClientProvider).getMovies();
});

final allEventsSearchFutureProvider =
    FutureProvider.autoDispose.family<List<EventModel>, String>((
  ref,
  text,
) async {
  return ref.watch(eventClientProvider).getMoviesByText(text);
});
