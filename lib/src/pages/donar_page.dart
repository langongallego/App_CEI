import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DonarPage extends StatelessWidget {
  
  final estiloTitulo    = TextStyle( fontSize: 20.0, fontWeight: FontWeight.bold );
  final estiloSubTitulo = TextStyle( fontSize: 18.0, color: Colors.grey );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _crearImagenTitulo    (context),
            _crearTitulo          (),
            _crearAcciones        (context),
            SizedBox( height: 15.0 ),
          ],
        ),
      ),
    bottomNavigationBar: _bottomNavigationBar(context)
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
            // icon: Icon( Icons.menu, size: 30.0 ),
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
  
  Widget _crearImagenTitulo(BuildContext context) {
    return SafeArea(
        child: Container(
        width: double.infinity,
        child: GestureDetector(
          onTap: ()=> Navigator.pushNamed(context, 'scroll'),
          child: 
          FadeInImage(
                    image: NetworkImage('https://www.iglesiacei.org/donaciones/img/donaciones.jpg'),
                    placeholder: AssetImage('assets/jar-loading.gif'),
                    fadeInDuration: Duration(milliseconds: 200),
                    height: 200,
                    fit: BoxFit.cover,            
            ),
        ),
      ),
    );
  }
  
  Widget _crearTitulo() {
    
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('Realiza tus donaciones', style: estiloTitulo ,textAlign: TextAlign.center),
                  SizedBox( height: 7.0 ),
                  Text('También puedes realizar tu donación por medio de transferencia bancaria a nombre de:\n', style: estiloSubTitulo, textAlign: TextAlign.justify ),
                  Text('Iglesia CEI Asambleas de Dios                        \n', style: estiloSubTitulo, textAlign: TextAlign.left ),
                  Text('BANCO ITAÚ: CUENTA CORRIENTE:\n00 9358 706\n\nBANCO COLPATRIA CUENTA CORRIENTE:\n7 911 000 991\n\nEn cualquier momento puedes verificar tu registro de donaciones enviando un correo a administracion@iglesiacei.org', style: estiloSubTitulo, textAlign: TextAlign.left ),
            
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
         _crearBotonRedondeado(context, Colors.teal[900], Icons.https, 'Dona Seguro' ),
        // _accion( Icons.https, 'Pago seguro' ),

      ],
    );

  }


  Widget _crearBotonRedondeado(BuildContext context, Color color, IconData icono, String texto ) {
 
    return ClipRect(
        child:
         Container(
          height: 70.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Colors.teal[900],
            borderRadius: BorderRadius.circular(10.0)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              
              RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(90.0),
                  ),
                  color: color,
                  child: CircleAvatar(
                  backgroundColor: color,
                  radius: 20.0,
                  child: Icon( icono, color: Colors.white, size: 30.0 ),
                ),
                 onPressed: _launchURL,
              ),
              Text( texto , style: TextStyle( color: Colors.white )),
            ],
          ),
 
        ),
      // ),
    );
  }

   _launchURL() async {
     const url = 'https://www.iglesiacei.org/donaciones/';
     if (await canLaunch(url)) {
       await launch(url);
     } else {
       throw 'Could not launch $url';
     }
 }

}