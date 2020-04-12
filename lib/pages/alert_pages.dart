import 'package:flutter/material.dart';

class AlertPages extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Alert'),),
      floatingActionButton: FloatingActionButton(child: Icon(Icons.gps_not_fixed) ,onPressed: (){Navigator.pop(context);}),
    ) ;
  }
}