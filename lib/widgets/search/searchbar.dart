import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    final fieldText = TextEditingController();

    clearText() {
      fieldText.clear();
    }

    return Container(
      padding: const EdgeInsets.fromLTRB(0, 8, 0, 12),
      child: TextField(
        controller: fieldText,
        onChanged: ((value) {}),
        style: const TextStyle(
          color: Colors.white,
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
