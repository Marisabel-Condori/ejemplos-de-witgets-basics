import 'package:flutter/material.dart';


import 'package:componentes/pages/alert_pages.dart';
import 'package:componentes/pages/avatar_pages.dart';
import 'package:componentes/pages/home_page.dart';

Map<String, WidgetBuilder> getAplicaciones(){
  return <String, WidgetBuilder>{
        '/'     : (BuildContext context) => HomePage(),
        'alert' : (BuildContext context) => AlertPages(),
        'avatar': (BuildContext context) => AvatarPages(),
      };
}