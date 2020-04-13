import 'package:flutter/material.dart';

class CardPages extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
        _tarjeta1(),
        _tarjeta2(),
      ],),
    );
  }

  Widget _tarjeta1() {
  return Card(child: Column(
    children: <Widget>[
      ListTile(leading: Icon(Icons.android), title: Text('TITULO'),subtitle: Text('aqui esta la descripicion'),),
      Row( mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[FlatButton(onPressed: (){}, child: Text('Cancelar'),),
                            FlatButton(onPressed: (){}, child: Text('Ok'))],)
    ],
  ));
  }
  Widget _tarjeta2(){
    return Card(child: Column(
      children: <Widget>[
        Image(image: NetworkImage('https://iso.500px.com/wp-content/uploads/2018/12/500px_blog_trends_licensing.jpg')),
        Container(padding: EdgeInsets.all(15.3), child: Text('escribir algo')),
      ],
    ),);
  }


}