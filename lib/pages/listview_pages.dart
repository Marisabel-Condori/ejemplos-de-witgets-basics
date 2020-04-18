import 'package:flutter/material.dart';

class ListViewPages extends StatefulWidget {
  ListViewPages({Key key}) : super(key: key);

  @override
  _ListViewPagesState createState() => _ListViewPagesState();
}

class _ListViewPagesState extends State<ListViewPages> {

  List<int> _listaNum = [10,12,3,4,5];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Listas & Scroll'),),
      body: _crearLista(),
    );
  }

  Widget _crearLista() {
    return ListView.builder(
      itemCount: _listaNum.length,
      itemBuilder: (BuildContext context, index){
        final _almacenaDato = _listaNum[index];
        return FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'), 
          image: NetworkImage('https://i.picsum.photos/id/$_almacenaDato/525/500.jpg')
        );
      },
    );
  }
}