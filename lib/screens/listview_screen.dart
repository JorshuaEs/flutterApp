import "package:flutter/material.dart";

class ListViewScreen1 extends StatelessWidget {
  final options = const [
    'Megaman',
    'Metal Gear',
    'Super Smash Bros',
    'Final Fantasy',
  ];

  const ListViewScreen1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview type 1'),
        ),
        body: ListView(
          children: [
            ...options
                .map((game) => ListTile(
                      title: Text(game),
                      trailing: const Icon(Icons.arrow_forward_ios_outlined),
                    ))
                .toList(),
          ],
        ));
  }
}
