import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          _cardTipoOne(),
          SizedBox(
            height: 20.0,
          ),
          _cardTipoTwo(),
        ],
      ),
    );
  }

  Widget _cardTipoOne() {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue,
            ),
            title: Text('Titulo de la tarjeta'),
            subtitle: Text(
                'Esta es una descripción de prueba para la tarjeta que estamos probando.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () {}, child: Text('Cancelar')),
              TextButton(onPressed: () {}, child: Text('Continuar'))
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipoTwo() {
    return Card(
      child: Column(
        children: [
          FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'),
            image: NetworkImage('https://wallpapercave.com/wp/wp4600617.jpg'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
          ),
          Container(
            child: Text('Esta es la descripción de la imagen'),
            padding: EdgeInsets.all(10.0),
          )
        ],
      ),
    );
  }
}
