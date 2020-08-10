import 'package:CEI/src/pages/eventos_page.dart';
import 'package:CEI/src/pages/social_page.dart';
import 'package:flutter/material.dart';

import 'package:CEI/src/pages/home_page.dart';
import 'package:CEI/src/pages/alert_page.dart';
import 'package:CEI/src/pages/card_page.dart';
import 'package:CEI/src/pages/animated_container.dart';
import 'package:CEI/src/pages/input_page.dart';
import 'package:CEI/src/pages/Slider_page.dart';
import 'package:CEI/src/pages/listview_page.dart';
import 'package:CEI/src/pages/intro_page.dart';
import 'package:CEI/src/pages/botones_page.dart';
import 'package:CEI/src/pages/scroll_page.dart';
import 'package:CEI/src/pages/quienes_page.dart';
import 'package:CEI/src/pages/gps_page.dart';
import 'package:CEI/src/pages/proceso_page.dart';
import 'package:CEI/src/pages/donar_page.dart';
import 'package:CEI/src/pages/contactanos_page.dart';
import 'package:CEI/src/pages/misiones_page.dart';
import 'package:CEI/src/pages/recursos_page.dart';



Map<String, WidgetBuilder> getApplicationRoutes(){

  return <String, WidgetBuilder>{

    'intro'             : ( BuildContext context ) => IntroPage(),
    '/'                 : ( BuildContext context ) => HomePage(),
    'alert'             : ( BuildContext context ) => AlertPage(),
    'card'              : ( BuildContext context ) => CardPage(),
    'animatedContainer' : ( BuildContext context ) => AnimatedContainerPage(),
    'inputs'            : ( BuildContext context ) => InputPage(),
    'slider'            : ( BuildContext context ) => SliderPage(),
    'list'              : ( BuildContext context ) => ListaPage(),
    'botones'           : ( BuildContext context ) => BotonesPage(),
    'intro_2'           : ( BuildContext context ) => ScrollPage(),
    'quienes'           : ( BuildContext context ) => QuienesPage(),
    'gps'               : ( BuildContext context ) => GpsPage(),
    'proceso'           : ( BuildContext context ) => ProcesoPage(),    
    'donar'             : ( BuildContext context ) => DonarPage(),
    'contactanos'       : ( BuildContext context ) => ContactanosPage(),
    'misiones'          : ( BuildContext context ) => MisionesPage(),
    'recursos'          : ( BuildContext context ) => RecursosPage(),
    'eventos'           : ( BuildContext context ) => EventosPage(),
    'social'            : ( BuildContext context ) => SocialPage(),
  };

}
