import 'package:componentes/pages/alert_pages.dart';
import 'package:componentes/pages/avatar_pages.dart';
import 'package:componentes/pages/home_page.dart';
import 'package:componentes/routes/routes.dart';
//import 'package:componentes/pages/home_temp.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componenetes App',
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      initialRoute: '/',
      routes: getAplicaciones(),
      onGenerateRoute: (RouteSettings settings){
        print('ruta llamada ${settings.name}');
        return MaterialPageRoute(builder: (BuildContext context) => AlertPages());

      },
    );
  }
}
//    VIDEO 70 ************************************//