import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(
          'assets/meet-logo.png',
          width: 130,
          height: 50,
        ),
        IconButton(
          onPressed: (() {}),
          icon: const FaIcon(
            FontAwesomeIcons.userCircle,
            size: 32,
          ),
        )
      ],
    );
  }
}
