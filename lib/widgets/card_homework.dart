import 'package:app_flutter/screens/home_screen.dart';
import 'package:flutter/material.dart';

class CardHomework extends StatelessWidget {
  const CardHomework({
    Key? key,
    required this.numberCard,
    this.banco,
    required this.image,
  }) : super(key: key);

  final String? numberCard;
  final String? banco;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navegar a la otra página
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
      },
      child: Card(
        margin: EdgeInsets.only(bottom: 20),
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        elevation: 30,
        shadowColor: Colors.black.withOpacity(0.5),
        child: Column(
          children: [
            FadeInImage(
              image: AssetImage(image),
              placeholder: const AssetImage('assets/images/jar-loading.gif'),
              width: double.infinity,
              height: 230,
              fit: BoxFit.cover,
              fadeInDuration: const Duration(milliseconds: 300),
            ),
            if (banco != null)
              Container(
                alignment: AlignmentDirectional.centerStart,
                padding: const EdgeInsets.only(left: 5, top: 10, bottom: 5),
                child: Text(
                  banco!,
                  style: TextStyle(
                    fontSize: 16.0,
                    //fontWeight: FontWeight.bold,
                    letterSpacing: 2.75,
                  ),
                ),
              ),
            if (numberCard != null)
              Container(
                alignment: AlignmentDirectional.centerStart,
                padding: const EdgeInsets.only(left: 5, top: 5, bottom: 10),
                child: Text(
                  numberCard!,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.75,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
