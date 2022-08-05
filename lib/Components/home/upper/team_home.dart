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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Row(
                    children: [
                      // ignore: prefer_const_constructors
                      Text(
                        ' Equipe : ',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        child: CircleAvatar(
                          backgroundColor: Colors.grey,
                          backgroundImage: NetworkImage(
                              'https://www.mtgsc.com.br/wp-content/uploads/revslider/home/man.png'),
                          radius: 20,
                        ),
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        child: CircleAvatar(
                          backgroundColor: Colors.grey,
                          backgroundImage: NetworkImage(
                              'https://www.pngkit.com/png/full/950-9501518_our-terms-working-with-you-professional-boy-image.png'),
                          radius: 20,
                        ),
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        child: CircleAvatar(
                          backgroundColor: Colors.grey,
                          backgroundImage: NetworkImage(
                              'https://w7.pngwing.com/pngs/644/369/png-transparent-management-sap-s-4hana-consultant-course-company-woman-business-miscellaneous-service-recruiter.png'),
                          radius: 20,
                        ),
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        child: CircleAvatar(
                          backgroundColor: Colors.grey,
                          backgroundImage: NetworkImage(
                              'https://mundonegro.inf.br/wp-content/uploads/2021/02/negocio-mulher-negra-cruzando-os-bracos_1187-6456.jpg'),
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
            ),
          ],
        ),
      ],
    );
  }
}