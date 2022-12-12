import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
      child: TextField(
        readOnly: true,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(15, 15, 20, 15),
          hintText: 'Buscar artista o ciudad',
          filled: true,
          hintStyle: TextStyle(
            color: Theme.of(context).colorScheme.onTertiary,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
          ),
          fillColor: Theme.of(context).colorScheme.tertiary,
          suffixIcon: Icon(
            Icons.search,
            color: Theme.of(context).colorScheme.onTertiary,
            size: 24,
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Color(0x00000000),
              width: 0,
            ),
            borderRadius: BorderRadius.circular(40),
          ),
        ),
      ),
    );
  }
}
