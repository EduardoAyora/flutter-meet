import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_meet2go/providers/event_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchBar extends ConsumerWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final fieldText = TextEditingController();
    Timer timer = Timer(const Duration(milliseconds: 0), () => {});

    clearText() {
      fieldText.clear();
    }

    return Container(
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 12),
      child: TextField(
        autofocus: true,
        controller: fieldText,
        onChanged: ((queryText) {
          timer.cancel();
          timer = Timer(const Duration(milliseconds: 1000), () {
            ref.read(searchedEventsClientProvider).searchEvents(queryText);
          });
        }),
        style: TextStyle(
          color: Theme.of(context).colorScheme.onTertiary,
          fontWeight: FontWeight.bold,
        ),
        cursorColor: Colors.white,
        decoration: InputDecoration(
          suffixIcon: IconButton(
            icon: const Icon(Icons.clear, size: 18),
            color: Theme.of(context).colorScheme.onTertiary,
            onPressed: clearText,
          ),
          contentPadding: const EdgeInsets.fromLTRB(15, 15, 20, 15),
          hintText: 'Buscar artista o ciudad',
          filled: true,
          hintStyle: TextStyle(
            color: Theme.of(context).colorScheme.onTertiary,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
          ),
          fillColor: Theme.of(context).colorScheme.tertiary,
          prefixIcon: Icon(
            Icons.search,
            color: Theme.of(context).colorScheme.onTertiary,
            size: 24,
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0xff101214),
              width: 0,
            ),
            borderRadius: BorderRadius.circular(40),
          ),
        ),
      ),
    );
  }
}
