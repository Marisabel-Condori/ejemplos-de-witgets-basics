import 'package:flutter/material.dart';

class ListViewPages extends StatefulWidget {
  ListViewPages({Key key}) : super(key: key);

  @override
  _ListViewPagesState createState() => _ListViewPagesState();
}

class _ListViewPagesState extends State<ListViewPages> {
  ScrollController _scrollController = new ScrollController();

  List<int> _listaNum = [];
  int ultimoValor = 0;

  @override
  initState() {
    super.initState();
    aumenta10();

    _scrollController.addListener((){
      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent){
        aumenta10();
      }
    }
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Listas & Scroll'),),
      body: _crearLista(),
    );
  }

  Widget _crearLista() {
    return ListView.builder(
      controller: _scrollController,
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

  aumenta10(){
    for (var i = 1; i <= 10; i++) {  
      ultimoValor += 1;
      print(ultimoValor);
      _listaNum.add(ultimoValor);
    }
    setState(() {
      
    });
  }
}