import 'package:flutter/material.dart';

class FSac extends StatefulWidget {
  const FSac({Key? key}) : super(key: key);

  @override
  State<FSac> createState() => _FSacState();
}

class _FSacState extends State<FSac> {
  TextEditingController? stringTotalEmprestado = TextEditingController();
  TextEditingController? stringQtdMeses = TextEditingController();
  double? amortizacao = 0;

  TextEditingController? stringQtdMesesIntervalo = TextEditingController();
  double? result = 0;

  calculate() {
    double totalEmprestado = double.parse(stringTotalEmprestado!.text);
    double qtdMeses = double.parse(stringQtdMeses!.text);
    amortizacao = totalEmprestado / qtdMeses;

    double qtdMesesIntervalo = double.parse(stringQtdMesesIntervalo!.text);

    result = amortizacao! * qtdMesesIntervalo;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            const Text(
              'Insira os valores nos campos abaixo',
              style: TextStyle(fontSize: 22),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              controller: stringTotalEmprestado,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Digite o valor total emprestado (R\$)',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: stringQtdMeses,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Digite a quantidade de meses parcelados',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: stringQtdMesesIntervalo,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Digite a quantidade de meses(intervalo)',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    calculate();
                  });
                },
                child: const Text(
                  'Calcular',
                  style: TextStyle(fontSize: 18),
                )),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'O valor da prestação é de:',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'R\$ ' + result!.toStringAsFixed(2),
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
