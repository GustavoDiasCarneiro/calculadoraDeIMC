import 'package:flutter/material.dart';

Widget myTextField(controller, labelTextField) {
  return TextField(
    controller: controller,
    keyboardType: TextInputType.number,
    decoration: InputDecoration(label: Text(labelTextField)),
  );
}

Widget myTextResultado(resultado) {
  return Align(
    alignment: Alignment.center,
    child: Text(
      'IMC: ${resultado.toStringAsFixed(1)}',
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
