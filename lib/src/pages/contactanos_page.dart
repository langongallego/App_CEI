
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactanosPage extends StatelessWidget {
  
  final estiloTitulo    = TextStyle( fontSize: 20.0, fontWeight: FontWeight.bold );
  final estiloSubTitulo = TextStyle( fontSize: 18.0, color: Colors.grey );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: <Widget>[
            
            _crearImagen1 (context),
            _crearTitulo  (),
            _crearAcciones(),
            _crearTexto1  (),
            _crearImagen2 (),
          ],
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
  
  Widget _crearImagen1(BuildContext context) {
    return SafeArea(
        child: Container(
        width: double.infinity,
        child: GestureDetector(
          onTap: ()=> Navigator.pushNamed(context, 'scroll'),
          child: 
          FadeInImage(
                    image: NetworkImage('https://www.iglesiacei.org/wp-content/uploads/2018/08/eres-nuevo-aqu%C3%AD2.jpg'),
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
                  Text('Contacto', style: estiloTitulo ,textAlign: TextAlign.center),
                  SizedBox( height: 7.0 ),
                  Text('Calle 109 No 21-77\nBogotá,\nColombia', style: estiloSubTitulo, textAlign: TextAlign.center ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearAcciones() {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          children: <Widget>[
         _accion( Icons.call, 'tel://+573134183036'),
          SizedBox( height: 5.0 ),
          Text( '(+57) 313 418 30 36\nLlamanos', style: TextStyle( fontSize: 15.0, color: Colors.blue, ),textAlign: TextAlign.center ),
          ],),
        Column(
          children: <Widget>[  
        _accion( Icons.mail,'mailto:administracion@iglesiacei.org'),
        SizedBox( height: 5.0 ),
        Text( 'administracion@iglesiacei.org\nEscribenos', style: TextStyle( fontSize: 15.0, color: Colors.blue, ),textAlign: TextAlign.center ),
        ],),
      ],
    );

  }

  Widget _accion(IconData icon, String enviar ) {

    return  IconButton(
      icon: Icon(icon, color: Colors.blue[300],size: 40.0),
      onPressed: (){
        launch('$enviar');
      },
    );

  }

  Widget _crearTexto1() {

    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric( horizontal: 40.0 ),
        child: Text('\n¡Eres Bienvenido a Este Lugar!\n',style: estiloTitulo ,textAlign: TextAlign.center,
        ),
      ),
    );
  }
  
  Widget _crearImagen2() {
    return SafeArea(
        child: Container(
        width: 200.0,
        height: 210.0,
        child: 
          FadeInImage(
                    image: NetworkImage('https://www.iglesiacei.org/wp-content/uploads/2018/09/pastores2-copy.jpg'),
                    placeholder: AssetImage('assets/jar-loading.gif'),
                    fadeInDuration: Duration(milliseconds: 200),
                    height: 200,
                    fit: BoxFit.cover,            
            ),
      ),
    );
  }

}