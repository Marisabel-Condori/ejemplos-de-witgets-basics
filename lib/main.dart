import 'package:componentes/pages/alert_pages.dart';
import 'package:componentes/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Componenetes App',
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en'), // English
        const Locale('he'), // Hebrew
        const Locale.fromSubtags(
            languageCode: 'zh'), // Chinese *See Advanced Locales below*
        // ... other locales the app supports
      ],
      //home: HomePage(),
      initialRoute: '/',
      routes: getAplicaciones(),
      onGenerateRoute: (RouteSettings settings) {
        print('ruta llamada ${settings.name}');
        return MaterialPageRoute(
            builder: (BuildContext context) => AlertPages());
      },
    );
  }
}
//    VIDEO 70 ************************************//
