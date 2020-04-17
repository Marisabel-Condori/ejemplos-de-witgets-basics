import 'package:componentes/pages/animated_container.dart';
import 'package:componentes/pages/card_pages.dart';
import 'package:componentes/pages/input_pages.dart';
import 'package:componentes/pages/slides_page.dart';
import 'package:flutter/material.dart';


import 'package:componentes/pages/alert_pages.dart';
import 'package:componentes/pages/avatar_pages.dart';
import 'package:componentes/pages/home_page.dart';

Map<String, WidgetBuilder> getAplicaciones(){
  return <String, WidgetBuilder>{
        '/'     : (BuildContext context) => HomePage(),
        'alert' : (BuildContext context) => AlertPages(),
        'avatar': (BuildContext context) => AvatarPages(),
        'card'  : (BuildContext context) => CardPages(),
        'animatedContainer'  : (BuildContext context) => AnimatedContainerPage(),
        'input' : (BuildContext context) => InputPages(),
        'slides' : (BuildContext context) => SlidesPage()
      };
}