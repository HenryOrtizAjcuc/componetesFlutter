import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = '';
  String _email = '';
  String _password = '';
  String _date = '';
  String _opcionSeleccionada = '';

  final _separator = 20.0;
  TextEditingController _inputDate = TextEditingController();

  List<String> _opciones = [
    'Volar',
    'Rayos x',
    'Super aliento',
    'Super fuerza'
  ];

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
          SizedBox(
            height: _separator,
          ),
          _crearFecha(context),
          SizedBox(
            height: _separator,
          ),
          _crearDropDown(),
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

  Widget _crearFecha(BuildContext context) {
    return TextField(
      controller: _inputDate,
      enableInteractiveSelection: false,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          hintText: 'Ingrese fecha de nacimiento',
          labelText: 'Fecha nacimiento',
          suffix: Icon(
            Icons.perm_contact_calendar,
            color: Colors.blue,
          ),
          icon: Icon(Icons.calendar_today)),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async {
    int initial = DateTime.now().year - 18;
    int last = DateTime.now().year - 18;
    int first = DateTime.now().year - 150;

    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: new DateTime(initial, 12, 31),
        firstDate: new DateTime(first),
        lastDate: new DateTime(last, 12, 31));

    if (picked != null) {
      setState(() {
        _date = picked.toString().substring(0, 10);
        _inputDate.text = _date;
      });
    }
  }

  Widget _crearDropDown() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: Text('Seleccione super poder:'),
        ),
        SizedBox(),
        DropdownButton(
          value:
              _opcionSeleccionada.isEmpty ? _opciones[0] : _opcionSeleccionada,
          items: obtenerOpcionesDropDown(),
          onChanged: (opt) {
            setState(() {
              _opcionSeleccionada = opt.toString();
            });
          },
        ),
      ],
    );
  }

  List<DropdownMenuItem<String>> obtenerOpcionesDropDown() {
    List<DropdownMenuItem<String>> lista =
        new List<DropdownMenuItem<String>>.filled(
            0, DropdownMenuItem(child: Text('')),
            growable: true);
    _opciones.forEach((element) {
      lista.add(DropdownMenuItem(
        child: Text(element),
        value: element,
      ));
    });
    return lista;
  }

  Widget _crearPersona() {
    return ListTile(
      title: Text('Nombre es: $_nombre'),
      subtitle: Text('Correo electrónico: $_email'),
      trailing: Text('Poder: $_opcionSeleccionada'),
    );
  }
}
