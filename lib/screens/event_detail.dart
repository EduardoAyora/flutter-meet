import 'package:flutter/material.dart';
import 'package:flutter_meet2go/model/event_model.dart';

class EventDetail extends StatelessWidget {
  const EventDetail({super.key, required this.event});

  final EventModel event;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(),
    );
  }
}