
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:CEI/src/routes/routes.dart';
import 'package:CEI/src/pages/alert_page.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CEi',
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],

      supportedLocales: [
        const Locale('en','US'),
        const Locale('es','ES'),
        

      ],
      // home: HomePage(),
      // initialRoute: 'intro',
      initialRoute: 'intro_2',

      routes: getApplicationRoutes(),
      onGenerateRoute: ( RouteSettings settings ) {
        print('Esta es la llamada sin asignación ${ settings.name}');

        return MaterialPageRoute(
          builder: ( BuildContext context ) => AlertPage()
          );

      } ,



    );
  }
}