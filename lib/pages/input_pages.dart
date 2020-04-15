import 'package:flutter/material.dart';


class InputPages extends StatefulWidget {
  InputPages({Key key}) : super(key: key);

  @override
  _InputPagesState createState() => _InputPagesState();
}

class _InputPagesState extends State<InputPages> {
  String _nombre = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text('Inputs'),),
      body: ListView(
        padding: EdgeInsets.only(left: 10.0, right: 5.0, top: 10.0),
        children: <Widget>[
          _crearInput(),
        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        hintText: 'Nombre',
        counterText: '0',
        prefixIcon: Icon(Icons.person),
        suffixIcon: Icon(Icons.person_pin),
        helperText: 'esta es la ayuda',
        labelText: 'Nombre',
        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20.0)))
        ),
        onChanged: (valor){
          _nombre = valor;
          print(_nombre);
        },
    );
  }
}