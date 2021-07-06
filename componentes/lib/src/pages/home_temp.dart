import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['uno', 'dos', 'tres', 'cuatro', 'cinco', 'seis'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        // children: _crearItems()
        children: _crearItemsCorta()
        ),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = <Widget>[];

    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );

      lista..add(tempWidget)..add(Divider());
    }

    return lista;
  }

  List<Widget> _crearItemsCorta() {
    return opciones.map((item) {
      return Column(
        children: [
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('Subtitulo'),
            leading: Icon(Icons.access_alarm),
            trailing: Icon(Icons.account_balance_outlined),
            onTap: () {},
          ),
          Divider(),
        ],
      );
    }).toList();
  }
}
