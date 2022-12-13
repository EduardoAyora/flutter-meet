import 'package:flutter_meet2go/model/event_model.dart';
import 'package:flutter_meet2go/services/event_client.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchedEventsClientProvider =
    ChangeNotifierProvider<SearchedEventsClient>(
  (ref) => SearchedEventsClient(),
);

final allEventsClientProvider = ChangeNotifierProvider<AllEventsClient>(
  (ref) => AllEventsClient(),
);

final allEventsClientFutureProvider = FutureProvider<List<EventModel>>((
  ref,
) async {
  return ref.watch(allEventsClientProvider).getEvents();
});
