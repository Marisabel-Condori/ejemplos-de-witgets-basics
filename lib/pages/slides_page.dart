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
        padding: EdgeInsets.only(top: 40.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearImagen(),
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
      onChanged: (valor){
        setState(() {
          _valorSlide = valor;
        });
      }); 
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage('https://lh3.googleusercontent.com/proxy/8jdHhdP-TgiW9Z_j9KqJxylvJ87bHgUfaTXHLpEs0cPpEzBqqHJ_IIWJOIkd7oHKxwO-TnV9kSWhMjqGwlkEDKOGIX0O0HLzttv_CRPCos95OKxGFzYHGLgSNnVnG7ONZpxGmQHrwarJfoPeDS4Gv015zdawaA'),
      width: _valorSlide,
      fit: BoxFit.contain,
      );
  }
}