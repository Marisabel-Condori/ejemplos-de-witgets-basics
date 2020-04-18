import 'package:flutter/material.dart';

class SlidesPage extends StatefulWidget {
  SlidesPage({Key key}) : super(key: key);

  @override
  _SlidesPageState createState() => _SlidesPageState();
}

class _SlidesPageState extends State<SlidesPage> {

  double _valorSlide = 100.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Slides'),),
      body: Container(
        padding: EdgeInsets.only(top: 40.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearImagen(),
            _crearCheckbox(),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigo,
      label: 'tamaño imagen',
      value: _valorSlide, 
      min: 10.0,
      max: 400.0,
      onChanged: (_bloquearCheck)? null : (valor){
        setState(() {
          _valorSlide = valor;
        });
      }); 
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage('https://es.web.img3.acsta.net/medias/nmedia/18/82/78/80/19696270.jpg'),
      width: _valorSlide,
      fit: BoxFit.contain,
      );
  }

  Widget _crearCheckbox() {
    return CheckboxListTile(
      title: Text('Bloquear Checkbox'),
      value: _bloquearCheck, 
      onChanged: (valorChek){
        setState(() {
          _bloquearCheck =  valorChek;
        });
      }
    );
  }
}