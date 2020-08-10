import 'package:flutter/material.dart';

import 'dart:math';
import 'dart:ui';


class BotonesPage extends StatelessWidget {

  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _fondoApp(),

          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                _titulos(),
                _botonesRedondeados(context)
              ],
            ),
          )

        ],
      ),
      bottomNavigationBar: _bottomNavigationBar(context)
    );
  }


  Widget _fondoApp(){

    final gradiente = Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(69, 51, 255, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ]
        )
      ),
    );


    final cajaRosa = Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        height: 360.0,
        width: 360.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80.0),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(52, 152, 219, 1.0),
              Color.fromRGBO(26, 82, 118, 1.0),
            ]
          )
        ),
      )
    );
    
    return Stack(
      children: <Widget>[
        gradiente,
        Positioned(
          top: -100.0,
          child: cajaRosa
        )
      ],
    );

  }

  Widget _titulos() {

    return SafeArea(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('CEI-APP', style: TextStyle( color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold )),
            SizedBox( height: 10.0 ),
            Text('Somos una iglesia contemporánea que le ofrece a las personas las herramientas bíblicas para experimentar un estilo de vida diferente', style: TextStyle( color: Colors.white, fontSize: 18.0 )),
          ],
        ),
      ),
    );

  }

  Widget _bottomNavigationBar(BuildContext context) {

    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Color.fromRGBO(55, 57, 84, 1.0),
        primaryColor: Colors.blue,
        textTheme: Theme.of(context).textTheme
          .copyWith( caption: TextStyle( color: Color.fromRGBO(116, 117, 152, 1.0) ) )
      ),
      child: BottomNavigationBar(
        
        items: [
          BottomNavigationBarItem(
            icon: _iconoBarra(context ,'botones',  Icons.menu,),
            title: Text('Menu')
          ),
          BottomNavigationBarItem(
            icon: _iconoBarra(context ,'eventos',  Icons.calendar_today,),
            title: Text('Eventos')
          ),
          BottomNavigationBarItem(
            icon: _iconoBarra(context ,'social',  Icons.bubble_chart,),
            title: Text('Redes sociales')
          ),
        ],
      ),
    );

  }


  Widget _botonesRedondeados(BuildContext context) {

    return Table(
      children: [
        TableRow(
          children: [
            _crearBotonRedondeado(context, 'quienes' , Colors.blue, Icons.location_city, '¿Quienes somos?' ),
            _crearBotonRedondeado( context,'card' ,Colors.purpleAccent, Icons.nature_people, 'Equipos (P.E.S.C.A.)' ),
           
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(context,'gps' , Colors.pinkAccent, Icons.group_add, 'G.P.S' ),
            _crearBotonRedondeado(context,'proceso' , Colors.orange, Icons.format_list_numbered, 'Proceso CEI' ),
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(context,'donar' , Colors.blueAccent, Icons.done_outline, 'Donaciones' ),
            _crearBotonRedondeado(context,'contactanos' , Colors.green, Icons.contact_phone, 'Contactanos' ),
          ]
        ),
        TableRow(
          children: [
            _crearBotonRedondeado(context,'misiones' , Colors.red, Icons.favorite, 'Misiones' ),
            _crearBotonRedondeado(context,'recursos' , Colors.teal, Icons.insert_drive_file, 'Recursos' ),
          ]
        )
      ],
    );

  }

  Widget _crearBotonRedondeado(BuildContext context, String ruta, Color color, IconData icono, String texto ) {
 
 
    return ClipRect(
        child:
         Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107, 0.7),
            borderRadius: BorderRadius.circular(20.0)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              
              SizedBox( height: 5.0 ),
              RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  color: color,
                  child: CircleAvatar(
                  backgroundColor: color,
                  radius: 35.0,
                  child: Icon( icono, color: Colors.white, size: 30.0 ),
                ),
                onPressed: () {
                Navigator.pushNamed(context, ruta);
                },
              ),
              Text( texto , style: TextStyle( color: color )),
              SizedBox( height: 5.0 )
            ],
          ),
 
        ),
      // ),
    );
  }

  Widget _iconoBarra(BuildContext context, String rutaIcono, IconData icono){

    return RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  color: Color.fromRGBO(55, 57, 84, 1.0),
                  child: CircleAvatar(
                  backgroundColor: Color.fromRGBO(55, 57, 84, 1.0),
                  radius: 20.0,
                  child: Icon( icono, color: Colors.white, size: 30.0 ),
                 ),
                onPressed: () {
                Navigator.pushNamed(context, rutaIcono);
                },
              );

  }


}