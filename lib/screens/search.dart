import 'package:flutter/material.dart';
import 'package:flutter_meet2go/providers/event_provider.dart';
import 'package:flutter_meet2go/widgets/search/number_of_items.dart';
import 'package:flutter_meet2go/widgets/search/results_list.dart';
import 'package:flutter_meet2go/widgets/search/searchbar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Search extends ConsumerWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return WillPopScope(
      onWillPop: (() async {
        ref.read(searchedEventsClientProvider).resetSearchedEvents();
        return true;
      }),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff101214),
          title: const SizedBox(
            width: double.infinity,
            child: Text(
              'Buscar',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          height: double.infinity,
          width: double.infinity,
          color: const Color(0xff101214),
          child: DefaultTextStyle.merge(
            style: TextStyle(
              color: Theme.of(context).colorScheme.onTertiary,
              fontWeight: FontWeight.bold,
            ),
            child: Column(
              children: const [
                SearchBar(),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 2,
                    horizontal: 2,
                  ),
                  child: NumberOfItems(),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                  ),
                  child: ResultsList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
