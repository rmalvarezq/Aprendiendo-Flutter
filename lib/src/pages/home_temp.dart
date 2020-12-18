import 'package:flutter/material.dart';

class HomePAgeTemp extends StatelessWidget {
  final opciones = ['uno', 'dos', 'tres', 'cuatro', 'cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        // children: _crearItem(),
        children: _crearItemCorta(),
      ),
    );
  }

  // List<Widget> _crearItem() {
  //   List<Widget> lista = new List<Widget>();
  //   for (String opt in opciones) {
  //     final tempWidget = ListTile(
  //       title: Text(opt),
  //     );
  //     lista..add(tempWidget)..add(Divider());
  //   }
  //   return lista;
  // }

  List<Widget> _crearItemCorta() {
    return opciones.map((item) {
      return Column(
        children: <Widget> [
          ListTile(
            title: Text(item + '!'),
            subtitle: Text('esto es una prueba'),
            leading: Icon(Icons.ac_unit_outlined),
            trailing: Icon(Icons.keyboard_arrow_right_sharp),
            onTap: (){},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
