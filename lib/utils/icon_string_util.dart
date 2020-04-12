import 'package:flutter/material.dart';


final _icons = <String, IconData> {
  "add_alert"       : Icons.add_alert,
  "folder_open"     : Icons.folder_open,
  "accessibility"   : Icons.accessibility,
};

Icon getIcon(String nombreIcono){
  return Icon(_icons[nombreIcono], color: Colors.green,);
}