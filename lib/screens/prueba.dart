import 'package:flutter/material.dart';
import 'package:app_flutter/widgets/widgets.dart';

class PruebaScreen extends StatelessWidget {
  const PruebaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarjetas'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          prueba_card(),
          custom_card_type_1(),
        ],
      ),
    );
  }
}
