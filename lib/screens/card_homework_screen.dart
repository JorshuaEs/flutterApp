import 'package:flutter/material.dart';
import 'package:app_flutter/widgets/widgets.dart';

class CardHomeworkScreen extends StatelessWidget {
  const CardHomeworkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Homework'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          SizedBox(height: 10),
          //SizedBox(height: 20),
          CardHomework(
              banco: 'Banrural',
              image: 'assets/images/Visa-banrural.png',
              numberCard: '214 56156 5651 221'),
          SizedBox(height: 20),
          CardHomework(
              banco: 'Banco Industrial',
              image: 'assets/images/Visa-bi.png',
              numberCard: '584 2254 1475 995'),
          SizedBox(height: 20),
          CardHomework(
              banco: 'Banco BAC Credomatic',
              image: 'assets/images/Visa-bac.png',
              numberCard: '854 8453 6544 231'),
        ],
      ),
    );
  }
}
// Remove the incomplete code block
