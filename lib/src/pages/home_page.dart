import 'package:flutter/material.dart';

import 'package:CEI/src/providers/menu_provider.dart';
import 'package:CEI/src/utils/icono_string_util.dart';
import 'package:CEI/src/pages/alert_page.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('CEI'),
      ),
      body: _lista(),
      );
  }

  Widget _lista() {

   return FutureBuilder(
     future: menuProvider.cargarData(),
     initialData: [],
     builder: ( BuildContext context, AsyncSnapshot<List<dynamic>> snapshot ){

       print('lista snapshot');
       print(snapshot.data);

       return ListView(
         children: _listaItems(snapshot.data, context) 
       );

     } ,
   );

  }

  List<Widget> _listaItems( List<dynamic> data, BuildContext context) {

    final List<Widget> opciones = [];

    data.forEach( ( opt ) { 

      final widgetTemp = ListTile(
        title: Text( opt ['texto'] ),
        leading: getIcons(opt ['icon']),
        trailing: Icon( Icons.arrow_right ),
        onTap: (){
          Navigator.pushNamed(context, opt ['ruta']);
          
          // final route = MaterialPageRoute(
          //   builder: ( context ) => AlertPage()            
          //   );
          // Navigator.push(context, route);

        },

      );

      opciones..add( widgetTemp )
              ..add( Divider(color: Colors.blueAccent[700],) );

    });

    return opciones;
  }
}