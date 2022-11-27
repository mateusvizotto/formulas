import 'package:flutter/material.dart';

class BSac extends StatefulWidget {
  const BSac({Key? key}) : super(key: key);

  @override
  State<BSac> createState() => _BSacState();
}

class _BSacState extends State<BSac> {
  TextEditingController? stringTotalEmprestado = TextEditingController();
  TextEditingController? stringQtdMeses = TextEditingController();
  TextEditingController? stringQtdMesesPagos = TextEditingController();
  double? result = 0;

  calculate() {
    double totalEmprestado = double.parse(stringTotalEmprestado!.text);
    double qtdMeses = double.parse(stringQtdMeses!.text);
    double qtdMesesPagos = double.parse(stringQtdMesesPagos!.text);
    result = (totalEmprestado / qtdMeses) * (qtdMeses - qtdMesesPagos);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
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
              controller: stringQtdMesesPagos,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Digite a quantidade de meses já pagos',
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
              'O valor total da dívida restante é de :',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'R\$ ' + result!.toStringAsFixed(2),
              style: const TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
    );
  }
}
