// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:animated_container/Components/home/notifications/card_notifications.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class NotificationHome extends StatefulWidget {
  const NotificationHome({Key? key}) : super(key: key);

  @override
  State<NotificationHome> createState() => _NotificationHomeState();
}

class _NotificationHomeState extends State<NotificationHome> {
  @override
  Widget build(BuildContext context) {
    return Wrap(children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .30,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return MyCard();
              },
            ),
          ),
        ],
      ),
    ]);
  }
}
