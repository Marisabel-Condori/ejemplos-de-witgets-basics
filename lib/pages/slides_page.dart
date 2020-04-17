import 'package:flutter/material.dart';

class SlidesPage extends StatefulWidget {
  SlidesPage({Key key}) : super(key: key);

  @override
  _SlidesPageState createState() => _SlidesPageState();
}

class _SlidesPageState extends State<SlidesPage> {

  double _valorSlide = 100.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Slides'),),
      body: Container(
        child: Column(
          children: <Widget>[
            _crearSlider(),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      value: _valorSlide, 
      min: 10.0,
      max: 400.0,
      onChanged: (valor){
        setState(() {
          _valorSlide = valor;
        });
      }); 
  }
}