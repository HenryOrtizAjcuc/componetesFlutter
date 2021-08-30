import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['uno', 'dos', 'tres', 'cuatro', 'cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        children: _crearItemsCorta(),
      ),
    );
  }

  // List<Widget> _crearItems() {
  //   List<Widget> lista = new List<Widget>.filled(0, ListTile(), growable: true);

  //   for (var item in opciones) {
  //     var widgetTemp = ListTile(
  //       title: Text(item),
  //     );

  //     lista..add(widgetTemp)..add(Divider());
  //   }
  //   return lista;
  // }

  List<Widget> _crearItemsCorta() {
    return opciones.map((e) {
      return Column(
        children: [
          ListTile(
            title: Text(e),
            subtitle: Text('subtitulo'),
            leading: Icon(Icons.verified_user),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider(
            height: 20.0,
          )
        ],
      );
    }).toList();
  }
}
