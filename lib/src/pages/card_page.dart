import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  final size = 30.0;
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
            height: size,
          ),
          _cardTipoTwo(),
          SizedBox(
            height: size,
          ),
          _cardTipoOne(),
          SizedBox(
            height: size,
          ),
          _cardTipoTwo(),
          SizedBox(
            height: size,
          ),
          _cardTipoOne(),
          SizedBox(
            height: size,
          ),
          _cardTipoTwo(),
          SizedBox(
            height: size,
          ),
          _cardTipoOne(),
          SizedBox(
            height: size,
          ),
          _cardTipoTwo(),
          SizedBox(
            height: size,
          ),
          _cardTipoOne(),
          SizedBox(
            height: size,
          ),
          _cardTipoTwo(),
          SizedBox(
            height: size,
          )
        ],
      ),
    );
  }

  Widget _cardTipoOne() {
    return Card(
      elevation: 8.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
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
    final card = Container(
      decoration: BoxDecoration(color: Colors.white),
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
            padding: EdgeInsets.all(10.0),
            child: Text('Esta es la descripción de la imagen'),
          )
        ],
      ),
    );

    return Container(
      // padding: EdgeInsets.all(30.0),
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(30.0), boxShadow: [
        BoxShadow(
            color: Colors.black26,
            blurRadius: 30.0,
            spreadRadius: 10.0,
            offset: Offset(2, 10))
      ]),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
    );
  }
}
