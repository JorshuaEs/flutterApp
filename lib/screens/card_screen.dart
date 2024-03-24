import 'package:flutter/material.dart';

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
          CustomCardType1(),
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

  Widget CustomCardType1() {
    return SizedBox(
      height: 216,
      width: 500,
      child: Card(
        color: Colors.lightBlue[50],
        child: Column(
          children: [
            const ListTile(
              leading: Icon(Icons.photo_album_outlined, color: Colors.indigo),
              title: Text("I'm title"),
              subtitle: Text(
                  'Ad et cillum incididunt duis Lorem consectetur dolor ex irure consectetur do velit enim eiusmod. Mollit aliquip amet amet elit deserunt ex incididunt magna laboris.'),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text('Cancel'),
                  ),
                  TextButton(onPressed: () {}, child: const Text('Ok')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget CustomCardType2({String? name, required String imageUrl}) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
      elevation: 30,
      shadowColor: Colors.black.withOpacity(0.5),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage(imageUrl),
            placeholder: const AssetImage('assets/images/jar-loading.gif'),
            width: double.infinity,
            height: 230,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if (name != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(name),
            ),
        ],
      ),
    );
  }
}
// Remove the incomplete code block
