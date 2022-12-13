import 'package:flutter/material.dart';
import 'package:flutter_meet2go/providers/event_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NumberOfItems extends ConsumerWidget {
  const NumberOfItems({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final eventClientNotifier = ref.watch(searchedEventsClientProvider);
    return Row(
      children: [
        const Text('Eventos que coinciden con búsqueda '),
        Text(
          eventClientNotifier.searchedEvents.length.toString(),
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
