import 'package:flutter/material.dart';

class JSac extends StatefulWidget {
  const JSac({Key? key}) : super(key: key);

  @override
  State<JSac> createState() => _JSacState();
}

class _JSacState extends State<JSac> {
  TextEditingController? stringTotalEmprestado = TextEditingController();
  TextEditingController? stringQtdMeses = TextEditingController();
  double? amortizacao = 0;

  TextEditingController? stringMesInicioIntervalo = TextEditingController();
  TextEditingController? stringQtdMesesIntervalo = TextEditingController();
  TextEditingController? stringTaxa = TextEditingController();
  double? result = 0;

  calculate() {
    double totalEmprestado = double.parse(stringTotalEmprestado!.text);
    double qtdMeses = double.parse(stringQtdMeses!.text);
    amortizacao = totalEmprestado / qtdMeses;

    double mesInicioIntervalo = double.parse(stringMesInicioIntervalo!.text);
    double qtdMesesIntervalo = double.parse(stringQtdMesesIntervalo!.text);
    double taxa = double.parse(stringTaxa!.text);

    result = amortizacao! *
        qtdMesesIntervalo *
        (1 +
            ((taxa / 100) *
                (qtdMeses -
                    mesInicioIntervalo -
                    ((qtdMesesIntervalo - 1) / 2))));
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
              controller: stringMesInicioIntervalo,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Digite o mês que marca o início do intervalo',
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
                labelText: 'Digite a qtd de meses presentes no intervalo',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: stringTaxa,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Digite a taxa de juros em porcentagem %',
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
              'O valor da soma das prestações em um intervalo é de:',
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
