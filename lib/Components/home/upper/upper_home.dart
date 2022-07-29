// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

class UpperHome extends StatelessWidget {
  const UpperHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Material(
            elevation: 5,
            color: Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
               borderRadius: BorderRadius.circular(10),
              child: Container(
                width: MediaQuery.of(context).size.width * .07,
                height: MediaQuery.of(context).size.height * .04,
                child: Center(
                    child: Text(
                      'Home',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                  ),
              ),
              onTap: () {},
            ),
          ),
        ),
        SizedBox(width: 10),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Material(
            elevation: 5,
            color: Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: MediaQuery.of(context).size.width * .07,
                height: MediaQuery.of(context).size.height * .04,
                child: Center(
                    child: Text(
                      'Widgets',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                  ),
              ),
              onTap: () {},
            ),
          ),
        ),
        SizedBox(width: 10),
        Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Material(
            elevation: 5,
            color: Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(10),
            child: InkWell(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: MediaQuery.of(context).size.width * .07,
                height: MediaQuery.of(context).size.height * .04,
                child: Center(
                    child: Text(
                      'Microsserviços',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                      ),
                    ),
                  ),
              ),
              onTap: () {},
            ),
          ),
            ),
      ],
    );
  }
}
