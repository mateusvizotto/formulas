import 'package:flutter/material.dart';
import 'package:formulas/pages/price/a_price.dart';

import 'price/b_price.dart';
import 'price/c_price.dart';
import 'price/d_price.dart';
import 'price/e_price.dart';
import 'price/f_price.dart';
import 'price/g_price.dart';

class PricePage extends StatelessWidget {
  const PricePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            leading: const Text('1', style: TextStyle(fontSize: 20)),
            title: const Text('Descubra o valor das prestações'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const APrice()));
            },
          ),
          const Divider(),
          ListTile(
            leading: const Text('2', style: TextStyle(fontSize: 20)),
            title: const Text('Descubra o saldo devedor no mês escolhido'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const BPrice()));
            },
          ),
          const Divider(),
          ListTile(
            leading: const Text('3', style: TextStyle(fontSize: 20)),
            title: const Text(
              'Descubra o saldo devedor no mês escolhido menos 1',
            ),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const CPrice()));
            },
          ),
          const Divider(),
          ListTile(
            leading: const Text('4', style: TextStyle(fontSize: 20)),
            title: const Text(
              'Descubra o valor da parcela de juros no mês escolhido',
            ),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const DPrice()));
            },
          ),
          const Divider(),
          ListTile(
            leading: const Text('5', style: TextStyle(fontSize: 20)),
            title: const Text('Descubra o valor da primeira amortização'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const EPrice()));
            },
          ),
          const Divider(),
          ListTile(
            leading: const Text('6', style: TextStyle(fontSize: 20)),
            title: const Text(
              'Descubra o valor da amortização no mês escolhido',
            ),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const FPrice()));
            },
          ),
          const Divider(),
          ListTile(
            leading: const Text('7', style: TextStyle(fontSize: 20)),
            title: const Text(
              'Descubra o valor das amortizações acumuladas até o mês escolhido',
            ),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const GPrice()));
            },
          ),
          const Divider(),
          ListTile(
            leading: const Text('8', style: TextStyle(fontSize: 20)),
            title: const Text('Título'),
            subtitle: const Text('Subtítulo'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const Text('9', style: TextStyle(fontSize: 20)),
            title: const Text('Título'),
            subtitle: const Text('Subtítulo'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const Text('10', style: TextStyle(fontSize: 20)),
            title: const Text('Título'),
            subtitle: const Text('Subtítulo'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
