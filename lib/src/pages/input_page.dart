import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = '';
  String _email = '';
  String _password = '';
  final _separator = 20.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: [
          _crearInput(),
          SizedBox(
            height: _separator,
          ),
          _crearEmail(),
          SizedBox(
            height: _separator,
          ),
          _crearPassord(),
          Divider(),
          _crearPersona()
        ],
      ),
    );
  }

  Widget _crearInput() {
    return Column(
      children: [
        TextField(
          autofocus: false,
          textCapitalization: TextCapitalization.sentences,
          decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
              counter: Text('Letras ${_nombre.length}'),
              hintText: 'Ingrese su nombre completo',
              labelText: 'Nombre',
              helperText: 'Nombre que se mostrara al iniciar sesión',
              suffix: Icon(
                Icons.accessibility,
                color: Colors.blue,
              ),
              icon: Icon(Icons.account_circle)),
          onChanged: (valor) {
            setState(() {
              _nombre = valor;
            });
          },
        )
      ],
    );
  }

  Widget _crearEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          hintText: 'Ingrese su correo electrónico',
          labelText: 'Correo electrónico',
          suffix: Icon(
            Icons.alternate_email,
            color: Colors.blue,
          ),
          icon: Icon(Icons.email)),
      onChanged: (valor) {
        setState(() {
          _email = valor;
        });
      },
    );
  }

  Widget _crearPassord() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          hintText: 'Ingrese contraseña',
          labelText: 'Contraseña',
          suffix: Icon(
            Icons.lock,
            color: Colors.blue,
          ),
          icon: Icon(Icons.lock)),
      onChanged: (valor) {
        setState(() {
          _password = valor;
          print(_password);
        });
      },
    );
  }

  Widget _crearPersona() {
    return ListTile(
      title: Text('Nombre es: $_nombre'),
      subtitle: Text('Correo electrónico: $_email'),
    );
  }
}
