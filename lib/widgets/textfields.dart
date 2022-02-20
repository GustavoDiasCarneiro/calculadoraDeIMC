import 'package:flutter/material.dart';

Widget myTextField(controller, labelTextField) {
  return TextField(
    controller: controller,
    keyboardType: TextInputType.number,
    decoration: InputDecoration(label: Text(labelTextField)),
  );
}
