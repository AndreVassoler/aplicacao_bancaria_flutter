import 'package:flutter/material.dart';

void main() {
  runApp(AplicacaoBancariaApp());
}

class AplicacaoBancariaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicação Bancária',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minha Conta Bancária'),
      ),
      body: ListView(
        children: <Widget>[
          Card(
            child: ListTile(
              leading: Icon(Icons.account_balance_wallet),
              title: Text('Saldo'),
              subtitle: Text('R\$ 10.000,00'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.attach_money),
              title: Text('Investimentos'),
              subtitle: Text('R\$ 5.000,00 em ações e fundos.'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.transfer_within_a_station),
              title: Text('Transferências Recentes'),
              subtitle: Text('Você não tem transferências recentes.'),
            ),
          ),
        ],
      ),
    );
  }
}
