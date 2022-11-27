import 'package:flutter/material.dart';
import 'package:formulas/pages/sac/a_sac.dart';

class SacPage extends StatelessWidget {
  const SacPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            leading: const Text('1', style: TextStyle(fontSize: 20)),
            title: const Text('Teste'),
            subtitle: const Text('Criando página'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => const ASac()));
            },
          ),
          const Divider(),
          ListTile(
            leading: const Text('2', style: TextStyle(fontSize: 20)),
            title: const Text('Título'),
            subtitle: const Text('Subtítulo'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const Text('3', style: TextStyle(fontSize: 20)),
            title: const Text('Título'),
            subtitle: const Text('Subtítulo'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const Text('4', style: TextStyle(fontSize: 20)),
            title: const Text('Título'),
            subtitle: const Text('Subtítulo'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const Text('5', style: TextStyle(fontSize: 20)),
            title: const Text('Título'),
            subtitle: const Text('Subtítulo'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const Text('6', style: TextStyle(fontSize: 20)),
            title: const Text('Título'),
            subtitle: const Text('Subtítulo'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const Text('7', style: TextStyle(fontSize: 20)),
            title: const Text('Título'),
            subtitle: const Text('Subtítulo'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {},
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
          const Divider(),
          ListTile(
            leading: const Text('11', style: TextStyle(fontSize: 20)),
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