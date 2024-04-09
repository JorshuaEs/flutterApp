import 'package:flutter/material.dart';

class custom_card_type_1 extends StatelessWidget {
  const custom_card_type_1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      children: [
        const ListTile(
          leading: Icon(Icons.photo_album_outlined, color: Colors.amber),
          title: Text('Soy un título'),
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
              TextButton(
                onPressed: () {},
                child: const Text('Ok'),
              ),
              TextButton(
                onPressed: () {},
                child: const Text('Prueba'),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
