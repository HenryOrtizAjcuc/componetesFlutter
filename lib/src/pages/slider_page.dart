import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 400.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 10.0),
        child: Column(
          children: [_crearSlider(), Expanded(child: _crearImage())],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
        activeColor: Colors.indigoAccent,
        label: 'Tamaño de la imagen',
        // divisions: 20,
        value: _valorSlider,
        min: 10.0,
        max: 400.0,
        onChanged: (valor) {
          setState(() {
            _valorSlider = valor;
          });
        });
  }

  Widget _crearImage() {
    return FadeInImage(
      placeholder: AssetImage('assets/jar-loading.gif'),
      width: _valorSlider,
      fit: BoxFit.contain,
      image: NetworkImage(
          'https://www.nawpic.com/media/2020/cool-pictures-for-nawpic-7.jpg'),
    );
  }
}
