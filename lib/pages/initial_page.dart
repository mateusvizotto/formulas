import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Fórmulas'),
          centerTitle: true,
          bottom: const TabBar(
            tabs: [
              Tab(
                text: 'SAC',
              ),
              Tab(
                text: 'PRICE',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Center(
              child: Text('sac'),
            ),
            Center(
              child: Text('price'),
            ),
          ],
        ),
      ),
    );
  }
}
