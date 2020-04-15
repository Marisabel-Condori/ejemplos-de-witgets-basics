import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';



class AnimatedContainerPage extends StatefulWidget {
  AnimatedContainerPage({Key key}) : super(key: key);
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.pink;

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10.0);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Animated cContainer'),),
      body: Center(
        child: Container(
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            color: _color),
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            _width = 50.0;
            _height = 100.0;
            _borderRadius = BorderRadius.circular(25.0);
            _color = Colors.lightBlueAccent;
          });
        }
        ),
    ) ;
  }
}