import 'package:flutter/cupertino.dart';
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
        SizedBox(height: 20.0),
        _tarjeta2(),
      ],),
    );
  }

  Widget _tarjeta1() {
  return Card(
    elevation: 30.0,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
    child: Column(
    children: <Widget>[
      ListTile(leading: Icon(Icons.android), title: Text('TITULO'),subtitle: Text('aqui esta la descripicion'),),
      Row( mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[FlatButton(onPressed: (){}, child: Text('Cancelar'),),
                            FlatButton(onPressed: (){}, child: Text('Ok'))],)
    ],
  ));
  }
  Widget _tarjeta2(){
    final card= Container(child: Column(
      children: <Widget>[
        //Image(image: NetworkImage('https://iso.500px.com/wp-content/uploads/2018/12/500px_blog_trends_licensing.jpg')),
        FadeInImage( image: NetworkImage('https://iso.500px.com/wp-content/uploads/2018/12/500px_blog_trends_licensing.jpg'),
                      placeholder: AssetImage('assets/jar-loading.gif'),
                      fadeInDuration: Duration(milliseconds: 200),
                      height: 200.0,
                      fit: BoxFit.cover,
                    ),
        Container(padding: EdgeInsets.all(15.3), child: Text('escribir algo')),
      ],
    ),);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow( color: Colors.black26, blurRadius: 30.0 , spreadRadius: 2.0 ),

        ]
      ) ,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ) 
    );
  }


}
