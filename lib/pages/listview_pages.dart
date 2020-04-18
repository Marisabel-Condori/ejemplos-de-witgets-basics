import 'package:flutter/material.dart';

class ListViewPages extends StatefulWidget {
  ListViewPages({Key key}) : super(key: key);

  @override
  _ListViewPagesState createState() => _ListViewPagesState();
}

class _ListViewPagesState extends State<ListViewPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Listas & Scroll'),),
      body: Text('holaaaa'),
    );
  }
}