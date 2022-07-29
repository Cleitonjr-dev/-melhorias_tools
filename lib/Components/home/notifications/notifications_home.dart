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
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * .25,
                    height: MediaQuery.of(context).size.height * .30,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 3,
                          offset: const Offset(1, 1),
                        ),
                      ],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      [index].toString(),
                      style: TextStyle(
                        color: Color.fromARGB(255, 202, 6, 6),
                        fontSize: 36.0,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    ]);
  }
}
