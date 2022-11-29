import 'package:flutter/material.dart';
import 'package:formulas/functions/price.dart';

class HPrice extends StatefulWidget {
  const HPrice({Key? key}) : super(key: key);

  @override
  State<HPrice> createState() => _HPriceState();
}

class _HPriceState extends State<HPrice> {
  TextEditingController? stringTotalEmprestado = TextEditingController();
  TextEditingController? stringQtdMeses = TextEditingController();
  TextEditingController? stringTaxa = TextEditingController();
  TextEditingController? stringMesT = TextEditingController();
  TextEditingController? stringIntervaloK = TextEditingController();

  num? result = 0;

  calculate() {
    num p0 = num.parse(stringTotalEmprestado!.text);
    num n = num.parse(stringQtdMeses!.text);
    num i = (num.parse(stringTaxa!.text) / 100);
    num t = num.parse(stringMesT!.text);
    num k = num.parse(stringIntervaloK!.text);

    result = Price.hPrice(p0: p0, i: i, n: n, t: t, k: k);
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
              controller: stringTaxa,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Digite a taxa de juros em porcentagem %',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: stringMesT,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Digite o mês escolhido',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: stringIntervaloK,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Digite a quantidade de meses do intervalo',
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
              'O valor das amortizações acumuladas em um intervalo que comece no mês escolhido é de:',
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
