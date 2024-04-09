import 'package:flutter/material.dart';

class prueba_card extends StatelessWidget {
  const prueba_card({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
              leading: Icon(Icons.photo),
              title: Text('Prueba'),
              subtitle: Text('AS DFASDF dasdf fadsas da'))
        ],
      ),
    );
  }
}
