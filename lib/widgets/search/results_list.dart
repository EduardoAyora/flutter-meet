import 'package:flutter/material.dart';
import 'package:flutter_meet2go/model/event_model.dart';
import 'package:flutter_meet2go/providers/event_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ResultsList extends ConsumerWidget {
  const ResultsList({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final eventClientNotifier = ref.watch(searchedEventsClientProvider);
    // return data.when(
    //   data: (data) {
        // List<EventModel> eventsList = data.map((e) => e).toList();
        List<EventModel> eventsList = eventClientNotifier.searchedEvents;
        // final resultQuantity = eventsList.length as String;
        return ListView.builder(
            shrinkWrap: true,
            padding: const EdgeInsets.all(8),
            itemCount: eventsList.length,
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 50,
                child: Center(
                  child: Text('${eventsList[index].name}'),
                ),
              );
            });
      // },
      // error: (err, s) => Text(
      //   err.toString(),
      //   style: const TextStyle(color: Colors.red),
      // ),
      // loading: () => Center(
      //   child: CircularProgressIndicator(
      //     color: Theme.of(context).colorScheme.secondary,
      //   ),
      // ),
    // );
  }
}
