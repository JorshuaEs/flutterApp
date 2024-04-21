import 'package:flutter/material.dart';

class Field extends StatelessWidget {
  const Field({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Custom Card Type 1'),
        ),
        body: SingleChildScrollView(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              TextFormField(
                autofocus: false,
                initialValue: '',
                textCapitalization: TextCapitalization.words,
                onChanged: (value) {
                  print('value $value');
                },
                validator: (value) {
                  if (value == null) return 'Este es un campo obligatorio';
                  return value.length < 3 ? 'Minimo de 3 letras' : null;
                },
                autovalidateMode: AutovalidateMode.always,
              ),
            ],
          ),
        )));
  }
}
