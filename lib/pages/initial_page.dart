import 'package:flutter/material.dart';
import 'package:formulas/pages/price_page.dart';
import 'package:formulas/pages/sac_page.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('CALCULADORA FINANCEIRA'),
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
            SacPage(),
            PricePage(),
          ],
        ),
      ),
    );
  }
}
