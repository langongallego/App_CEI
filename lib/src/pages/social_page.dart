import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialPage extends StatelessWidget {
  
  final estiloTitulo    = TextStyle( fontSize: 20.0, fontWeight: FontWeight.bold );
  final estiloSubTitulo = TextStyle( fontSize: 18.0, color: Colors.grey );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      // ImageClickEvent       (),
      SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _crearImagenTitulo    (context),
            _crearTitulo          (),
            _crearAcciones        (),
            SizedBox( height: 15.0 ),
            _crearImagenConoce    (),
            SizedBox( width: 30.0 ),
            // _crearConoce          (),
            // _crearLista           (),
            // _crearDevocional      (),
            // _crearListaDevocion   (),
            


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
                    image: NetworkImage('https://images.squarespace-cdn.com/content/v1/5cf57ef7efb7da0001e560fc/1563759420632-RMUUFZRFYYQNZC2L9YGW/ke17ZwdGBToddI8pDm48kDu-OvKe9-yMBj32JSWknrt7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z5QPOohDIaIeljMHgDF5CVlOqpeNLcJ80NK65_fV7S1UeYpbs9jo8ZspcFPqqqFUvR5OmeoU2fGxa6lBXXNRb1WZDqXZYzu2fuaodM4POSZ4w/The+catalyst+for+business+growth+%282%29.png?format=1500w'),
                    placeholder: AssetImage('assets/jar-loading.gif'),
                    fadeInDuration: Duration(milliseconds: 200),
                    height: 200,
                    fit: BoxFit.cover,            
            ),
        ),
      ),
    );
  }
  
  Widget _crearImagenConoce() {
    return Container(
      width: 300.0,
      height: 200.0,
      child: 
        FadeInImage(
                  image: NetworkImage('https://www.iglesiacei.org/wp-content/uploads/2019/09/Tarjeta-Cafe%CC%81nueva.png'),
                  placeholder: AssetImage('assets/jar-loading.gif'),
                  fadeInDuration: Duration(milliseconds: 200),
                  height: 200,
                  fit: BoxFit.cover,            
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
                  Text('¡Nuestras redes sociales!', style: estiloTitulo ,textAlign: TextAlign.center),
                  SizedBox( height: 7.0 ),
                  Text('Una iglesia apasionada que busca la salud espiritual de las personas bajo el propósito de Jesús. Pr Humberto & Esther Fajardo. Domingos: 8:30am-10:30am', style: estiloSubTitulo, textAlign: TextAlign.center ),
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

        _accion( Icons.accessibility, 'INSTAGRAM', 'https://p.kindpng.com/picc/s/105-1056642_follow-us-on-instagram-transparent-background-instagram-png.png','https://www.instagram.com/iglesiacei' ),
        _accion( Icons.account_circle, 'YOUTUBE', 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/YouTube_Logo.svg/640px-YouTube_Logo.svg.png', 'https://www.youtube.com/channel/UCaxLHLZ3lczJEF1KQB8mD9Q'),
        _accion( Icons.group_add, 'FACEBOOK', 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Facebook_f_logo_%282019%29.svg/600px-Facebook_f_logo_%282019%29.svg.png', 'https://www.facebook.com/iglesiaCEI'),

      ],
    );

  }

  Widget _accion(IconData icon, String texto, String url, String urlVideo ) {

    return GestureDetector(
              onTap: () {
                launch('$urlVideo');
              },
              child: Column(
      children: <Widget>[
        Container(
          height: 60.0,
          child: FadeInImage(
                      placeholder: AssetImage('assets/jar-loading.gif'),           
                      image: NetworkImage('$url'),
                      ),
        ),
        // Icon( icon, color: Colors.teal, size: 40.0 ),
        SizedBox( height: 5.0 ),
        Text( texto, style: TextStyle( fontSize: 15.0, color: Colors.teal[900] ), )
      ],
    ),

  );
  }

 

  Widget _grupos( String url, String urlVideo){

    return 
    GestureDetector(
              onTap: () {
                launch('$urlVideo');
              },
              child:            
                Column(
                children: <Widget>[
                  Container(
                    height: 150,
                    width: 200,
                    child: FadeInImage(
                    placeholder: AssetImage('assets/jar-loading.gif'),           
                    image: NetworkImage('$url'),
                    ),
                  ),
               ],
              ),
      
            );
  }

  
 

  
}