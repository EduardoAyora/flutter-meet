import 'package:flutter/material.dart';
import 'package:flutter_meet2go/model/event_model.dart';
import 'package:flutter_meet2go/providers/event_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ResultsList extends ConsumerWidget {
  const ResultsList({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final eventClientNotifier = ref.watch(searchedEventsClientProvider);
    List<EventModel> eventsList = eventClientNotifier.searchedEvents;
    if (eventClientNotifier.isSearchLoading) {
      return Center(
        child: CircularProgressIndicator(
          color: Theme.of(context).colorScheme.secondary,
        ),
      );
    }
    return ListView.builder(
        shrinkWrap: true,
        padding: const EdgeInsets.all(8),
        itemCount: eventsList.length,
        itemBuilder: (BuildContext context, int index) {
          return SizedBox(
            height: 50,
            child: Center(
              child: Text(
                '${eventsList[index].name}',
              ),
            ),
          );
        });
  }
}
