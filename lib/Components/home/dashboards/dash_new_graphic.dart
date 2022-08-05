// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class NewGraphic extends StatefulWidget {
  @override
  _NewGraphicState createState() => _NewGraphicState();
}

class _NewGraphicState extends State<NewGraphic> {
  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      color: Color.fromRGBO(147, 147, 147, 1),
      radius: Radius.circular(10),
      strokeWidth: 2,
      // ignore: prefer_const_literals_to_create_immutables
      dashPattern: [
        4,
        4,
      ],
      child: Container(
        width: MediaQuery.of(context).size.width * .04,
        height: MediaQuery.of(context).size.height * .28,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(239, 239, 239, 1),
          boxShadow: [
            BoxShadow(
              color: Color.fromRGBO(239, 239, 239, 1).withOpacity(0.3),
              spreadRadius: 3,
              blurRadius: 3,
              offset: const Offset(1, 1),
            ),
          ],
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ignore: prefer_const_constructors
            RotatedBox(
              quarterTurns: -1,
              child: Text(
                'novo gráfico',
                style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),
              ),
            ),
            PopupMenuButton(
              offset: Offset(185, 0),
              color: Color(0xFFD52B1E),
              splashRadius: 20,
              position: PopupMenuPosition.over,
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(30.0),
                ),
              ),
              tooltip: 'Escolha um tipo',
              itemBuilder: (context) => [
                PopupMenuItem(
                  child: Text(
                    "Gráfico Pizza",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  value: 1,
                ),
                PopupMenuItem(
                  child: Text(
                    "Gráfico Linha",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  value: 2,
                ),
                PopupMenuItem(
                  child: Text(
                    "Gráfico Barra",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  value: 3,
                ),
              ],
              icon: Icon(
                Icons.add_circle_outline,
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
