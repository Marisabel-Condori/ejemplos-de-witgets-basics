import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert'),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.gps_not_fixed),
          onPressed: () {
            Navigator.pop(context);
          }),
      body: Center(
        child: RaisedButton(
            child: Text('Mensaje'),
            color: Colors.blueGrey,
            textColor: Colors.white,
            shape: StadiumBorder(),
            onPressed: () => _mostrarAlert(context)),
      ),
    );
  }

  void _mostrarAlert(BuildContext context){
    showDialog(context: context,
    barrierDismissible:true,
    builder: (context){
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        title: Text('tituloooo'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text('contenidoooooooooooooooooooooooooooooooooooooooooooooooooo'),
            FlutterLogo(size: 100.0)
          ],
        ),
        actions: <Widget>[
          FlatButton(onPressed: () => Navigator.of(context).pop(), child: Text('cancelar')),
          FlatButton(onPressed: () => Navigator.of(context).pop(), child: Text('ok'))
        ],
      );
    }
    
    );
  }
}
