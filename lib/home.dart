import 'package:calculadora_imc/widgets/textfields.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controllerAltura = TextEditingController();
  final controllerPeso = TextEditingController();

  double res = 0;

  calculo() {
    res = double.parse(controllerPeso.text) /
        (double.parse(controllerAltura.text) *
            double.parse(controllerAltura.text));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Calculadora de IMC'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            myTextField(controllerAltura, 'Altura'),
            const Padding(padding: EdgeInsets.only(top: 10)),
            myTextField(controllerPeso, 'Peso'),
            const Padding(padding: EdgeInsets.only(top: 20)),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  calculo();
                  controllerAltura.clear();
                  controllerPeso.clear();
                });
              },
              child: const Text('Calcular'),
            ),
            const Padding(padding: EdgeInsets.only(top: 20)),
            Align(
              alignment: Alignment.center,
              child: Text(
                'IMC: ' + res.toStringAsFixed(1),
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
