import 'dart:async';

import 'package:flutter/cupertino.dart';
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
  bool isLoading = false;

  @override
  initState() {
    super.initState();
    _aumenta10();

    _scrollController.addListener((){
      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent){
        //_aumenta10();
        fetchdata();
      }
    }
    );
  }

  @override
  void dispose() { 
    super.dispose();
    _scrollController.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Listas & Scroll'),),
      body: Stack(
        children: <Widget>[
          _crearLista(),
          _crearLoading(),
        ],
        )
    );
  }

  Widget _crearLista() {
    return RefreshIndicator(
      onRefresh: _agregarPagina1,
        child: ListView.builder(
        controller: _scrollController,
        itemCount: _listaNum.length,
        itemBuilder: (BuildContext context, index){
          final _almacenaDato = _listaNum[index];
          return FadeInImage(
            placeholder: AssetImage('assets/jar-loading.gif'), 
            image: NetworkImage('https://i.picsum.photos/id/$_almacenaDato/525/500.jpg')
          );
        },
      ),
    );
  }

  _aumenta10(){
    for (var i = 1; i <= 10; i++) {  
      ultimoValor += 1;
      print(ultimoValor);
      _listaNum.add(ultimoValor);
    }
    setState(() {
      
    });
  }

  Future<Null> fetchdata() async{
    isLoading = true;
    setState(() {});
    return new Timer(Duration(seconds:2 ), esperaRespuesta);
  }

  void esperaRespuesta(){
    isLoading = false;
    _scrollController.animateTo(
      _scrollController.position.pixels+100, duration: Duration(milliseconds: 1000), curve: Curves.ease);

    _aumenta10();
  }

  Widget _crearLoading() {
    if(isLoading){
      return Column(
        //mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: <Widget>[
              CircularProgressIndicator(),
            ],
          ),
          SizedBox(height: 15.0),
        ],
      );
    }else{
      return Container();
    }
  }

  Future<Null> _agregarPagina1() {
    Timer(Duration(seconds: 2), (){
      _listaNum.clear();
      _aumenta10();
    });
    return Future.delayed(Duration(seconds: 2));
  }
}