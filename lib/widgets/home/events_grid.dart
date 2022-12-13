import 'package:flutter/material.dart';
import 'package:flutter_meet2go/model/event_model.dart';
import 'package:flutter_meet2go/providers/event_provider.dart';
import 'package:flutter_meet2go/screens/event_detail.dart';
import 'package:flutter_meet2go/utils/date_utils.dart';
import 'package:flutter_meet2go/widgets/home/card.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class EventsGrid extends ConsumerWidget {
  const EventsGrid({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final data = ref.watch(allEventsClientFutureProvider);
    return data.when(
      data: (data) {
        List<EventModel> eventsList = data.map((e) => e).toList();
        return GridView.count(
          childAspectRatio: 0.65,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 2,
          mainAxisSpacing: 0,
          crossAxisSpacing: 3,
          children: List.generate(eventsList.length, (index) {
            final String imageUrl =
                'https://d20zx9sjn15rrf.cloudfront.net/assets/${eventsList[index].coverImage!}';
            eventsList[index].coverImage = imageUrl;
            return InkWell(
              onTap: () => Navigator.of(context).push(
                PageRouteBuilder(
                  pageBuilder: (context, animation, secondaryAnimation) =>
                      EventDetail(
                    event: eventsList[index],
                  ),
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) {
                    return SlideTransition(
                      position: Tween(
                        begin: const Offset(1.0, 0.0),
                        end: const Offset(0.0, 0.0),
                      ).animate(animation),
                      child: child,
                    );
                  },
                ),
              ),
              child: MyCard(
                date: formatearDiaYHora(
                  eventsList[index].startDate!,
                  eventsList[index].startTime!,
                ),
                imageUrl: imageUrl,
                name: eventsList[index].name!,
              ),
            );
          }),
        );
      },
      error: (err, s) => Text(
        err.toString(),
        style: const TextStyle(color: Colors.red),
      ),
      loading: () => Center(
        child: CircularProgressIndicator(
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
    );
  }
}
