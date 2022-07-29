// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class TeamHome extends StatelessWidget {
  const TeamHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    // ignore: prefer_const_constructors
                    Text(
                      ' Equipes : ',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 10),
                    Flexible(
                      child: CircleAvatar(
                        backgroundColor: Colors.red,
                        backgroundImage: NetworkImage(
                            'https://www.shareicon.net/data/512x512/2016/08/05/807310_gaming_512x512.png'),
                        radius: 20,
                      ),
                    ),
                    SizedBox(width: 10),
                    Flexible(
                      child: CircleAvatar(
                        backgroundColor: Colors.blue,
                        backgroundImage: NetworkImage(
                            'https://www.shareicon.net/data/512x512/2016/08/05/807310_gaming_512x512.png'),
                        radius: 20,
                      ),
                    ),
                    SizedBox(width: 10),
                    Flexible(
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        backgroundImage: NetworkImage(
                            'https://www.shareicon.net/data/512x512/2016/08/05/807310_gaming_512x512.png'),
                        radius: 20,
                      ),
                    ),
                    SizedBox(width: 10),
                    Flexible(
                      child: CircleAvatar(
                        backgroundColor: Colors.green,
                        backgroundImage: NetworkImage(
                            'https://www.shareicon.net/data/512x512/2016/08/05/807310_gaming_512x512.png'),
                        radius: 20,
                      ),
                    ),
                    SizedBox(width: 10),
                  ],
                ),
              ),
              width: MediaQuery.of(context).size.width * .20,
              height: MediaQuery.of(context).size.height * .07,
              decoration: BoxDecoration(
                color: Color.fromRGBO(255, 255, 255, 1),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 3,
                    blurRadius: 3,
                    offset: Offset(1, 1),
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ],
        ),
      ],
    );
  }
}