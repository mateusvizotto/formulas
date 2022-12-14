import 'package:flutter/material.dart';

import 'sac/a_sac.dart';
import 'sac/b_sac.dart';
import 'sac/c_sac.dart';
import 'sac/d_sac.dart';
import 'sac/e_sac.dart';
import 'sac/f_sac.dart';
import 'sac/g_sac.dart';
import 'sac/h_sac.dart';
import 'sac/i_sac.dart';
import 'sac/j_sac.dart';
import 'sac/k_sac.dart';

class SacPage extends StatelessWidget {
  const SacPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            leading: const Text('1', style: TextStyle(fontSize: 20)),
            title: const Text('Descubra o valor da amortização'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const ASac()));
            },
          ),
          const Divider(),
          ListTile(
            leading: const Text('2', style: TextStyle(fontSize: 20)),
            title: const Text(
              'Descubra o saldo devedor após ter pago algumas parcelas',
            ),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const BSac()));
            },
          ),
          const Divider(),
          ListTile(
            leading: const Text('3', style: TextStyle(fontSize: 20)),
            title: const Text(
              'Descubra o saldo devedor após algumas parcelas terem sido pagas menos uma',
            ),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const CSac()));
            },
          ),
          const Divider(),
          ListTile(
            leading: const Text('4', style: TextStyle(fontSize: 20)),
            title: const Text(
              'Descubra os juros que ainda restam ser pagos',
            ),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const DSac()));
            },
          ),
          const Divider(),
          ListTile(
            leading: const Text('5', style: TextStyle(fontSize: 20)),
            title: const Text(
              'Descubra o valor da prestação em um determinado mês',
            ),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const ESac()));
            },
          ),
          const Divider(),
          ListTile(
            leading: const Text('6', style: TextStyle(fontSize: 20)),
            title: const Text(
                'Descubra a soma das amortizações em um intervalo de tempo'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const FSac()));
            },
          ),
          const Divider(),
          ListTile(
            leading: const Text('7', style: TextStyle(fontSize: 20)),
            title: const Text(
              'Descubra a soma dos juros acumulados até um determinado mês',
            ),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const GSac()));
            },
          ),
          const Divider(),
          ListTile(
            leading: const Text('8', style: TextStyle(fontSize: 20)),
            title: const Text(
              'Descubra a soma dos juros em um intervalo que comece pelo mês escolhido',
            ),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const HSac()));
            },
          ),
          const Divider(),
          ListTile(
            leading: const Text('9', style: TextStyle(fontSize: 20)),
            title: const Text('Descubra a soma das prestações acumuladas'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const ISac()));
            },
          ),
          const Divider(),
          ListTile(
            leading: const Text('10', style: TextStyle(fontSize: 20)),
            title: const Text('Decubra a soma das prestações de um intervalo'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const JSac()));
            },
          ),
          const Divider(),
          ListTile(
            leading: const Text('11', style: TextStyle(fontSize: 20)),
            title: const Text('Decubra o decréscimo das prestações'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const KSac()));
            },
          ),
        ],
      ),
    );
  }
}
