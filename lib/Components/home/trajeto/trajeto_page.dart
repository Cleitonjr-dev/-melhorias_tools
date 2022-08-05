import 'package:animated_container/Views/home.dart';
import 'package:flutter/material.dart';

class TrajetoPage extends StatefulWidget {
  const TrajetoPage({Key? key}) : super(key: key);

  @override
  State<TrajetoPage> createState() => _TrajetoPageState();
}

class _TrajetoPageState extends State<TrajetoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(213, 43, 30, 1),
        title: const Text('Tela trajeto(em desenvolvimento)'),
      ),
    );
  }
}
