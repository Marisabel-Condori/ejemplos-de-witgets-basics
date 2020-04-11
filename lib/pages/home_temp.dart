import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['uno', 'dos', 'tres', 'cuatro'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: ListView(
        //children: adicionaLista()
        children:_adicionaListaCorta()
        
      ),

    );
  }

  List<Widget> _adicionaListaCorta(){
    return opciones.map((opt)  {
      return Column(
        children: <Widget>[
          ListTile(title: Text('$opt !'), subtitle: Text('subtitulo'), leading: Icon(Icons.add_photo_alternate),trailing: Icon(Icons.arrow_forward),onTap: (){},),
          Divider()
        ],
      );
    }
    ).toList();
  }
  

  List adicionaLista(){
     List<Widget> lista = new List<Widget>();
     for (var i in opciones) {
       final devolverLista = ListTile(
         title: Text(i),
       );
       lista..add(devolverLista)
            ..add(Divider());
     }
     return lista;
  }

}