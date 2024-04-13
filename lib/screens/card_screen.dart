import 'package:flutter/material.dart';
import 'package:app_flutter/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String imageUrl;
    final String? name;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          custom_card_type_1(),
          SizedBox(height: 10),
          CustomCardType2(
            imageUrl:
                'https://img.freepik.com/foto-gratis/paisaje-montanoso-nevado-lago-montanas-al-fondo_1340-39792.jpg?size=626&ext=jpg&ga=GA1.1.1700460183.1708214400&semt=ais',
          ),
          SizedBox(height: 20),
          CustomCardType2(
            imageUrl:
                'https://img.freepik.com/fotos-premium/pequeno-lago-fondo-verdes-montanas-arboles_499384-1973.jpg',
          ),
          SizedBox(height: 20),
          CustomCardType2(
            name: 'Un hermoso paisaje',
            imageUrl:
                'https://i.pinimg.com/736x/9f/07/94/9f079430506df322b13cab6478fe926a.jpg',
          ),
          SizedBox(height: 100),
        ],
      ),
    );
  }
}
// Remove the incomplete code block
