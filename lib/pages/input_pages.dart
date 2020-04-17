import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class InputPages extends StatefulWidget {
  InputPages({Key key}) : super(key: key);

  @override
  _InputPagesState createState() => _InputPagesState();
}

class _InputPagesState extends State<InputPages> {
  String _nombre = '';
  String _email = '';
  String _fecha = '';

  TextEditingController _modificaFecha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text('Inputs'),),
      body: ListView(
        padding: EdgeInsets.only(left: 10.0, right: 5.0, top: 10.0),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearFecha(context),
          Divider(),
          _crearPersona(),
        ],
      ),
    );
  }

  Widget _crearInput() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        hintText: 'Nombre',
        counterText: 'letras: ${_nombre.length}',
        icon: Icon(Icons.person),
        suffixIcon: Icon(Icons.person_pin),
        helperText: 'esta es la ayuda',
        labelText: 'Nombre',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0))
        ),
        onChanged: (valor){
          setState(() {
             _nombre = valor;
          });
            print(_nombre);
        },
    );
  }

  Widget _crearEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: 'Email',
        icon: Icon(Icons.email),
        suffixIcon: Icon(Icons.email),
        labelText: 'Email',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0))
        ),
        onChanged: (valor){
          setState(() {
             _email = valor;
          });
            print(_email);
        },
    );
  }

  Widget _crearPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: 'Password',
        icon: Icon(Icons.lock_open),
        suffixIcon: Icon(Icons.lock_open),
        labelText: 'Password',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0))
        ),
    );
  }

  Widget _crearPersona(){
    return ListTile(
      title: Text('nombre de la persona es: $_nombre'),
      subtitle: Text('email: $_email'),
    );
  }

  Widget _crearFecha(context) {
    return TextField(
      controller: _modificaFecha,
      enableInteractiveSelection: false,
      decoration: InputDecoration(
        hintText: 'Fecha',
        icon: Icon(Icons.calendar_today),
        suffixIcon: Icon(Icons.perm_contact_calendar),
        labelText: 'Fecha',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0))
        ),
        onTap: (){
          FocusScope.of(context).requestFocus(new FocusNode());
          _selectDate(context);
        },
    );
  }

  void _selectDate(BuildContext context) async{
    DateTime picket = await showDatePicker(
      context: context, 
      initialDate: new DateTime.now(), 
      firstDate: new DateTime(2019), 
      lastDate: new DateTime(2022)
      );
      if (picket != null ){
        setState(() {
          _fecha = picket.toString();
          _modificaFecha.text = _fecha;
        });
      }
  }
  
}

  