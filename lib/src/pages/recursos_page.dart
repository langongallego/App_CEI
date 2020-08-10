import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class RecursosPage extends StatelessWidget {
  
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
            _crearConoce          (),
            _crearLista           (),
            _crearDevocional      (),
            _crearListaDevocion   (),
            


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
                    image: NetworkImage('https://www.iglesiacei.org/wp-content/uploads/2018/04/haz-parrte1.jpg'),
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
                  image: NetworkImage('https://www.iglesiacei.org/wp-content/uploads/2019/10/gps.jpg'),
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
                  Text('Recursos CEI', style: estiloTitulo ,textAlign: TextAlign.center),
                  SizedBox( height: 7.0 ),
                  Text('Si ya estás realizando tu GPS, aquí encontrarás videos para que con tu grupo aprendas de Dios todos los días. Con estos recursos podemos encontrar un equilibrio para la vida cristiana, ampliando diferentes temas que nos van a ayudar en nuestro día a día.', style: estiloSubTitulo, textAlign: TextAlign.center ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearConoce() {
    
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('Series en Video', style: estiloTitulo ,textAlign: TextAlign.center),
                  SizedBox( height: 7.0 ),
                  Text('Elige una serie en la que quieras profundizar y encuentra todos los recursos que hay disponibles para ti!\n',textAlign: TextAlign.center,),
                  
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

        _accion( Icons.accessibility, 'CONOCE' ),
        _accion( Icons.account_circle, 'EMPÓDERATE' ),
        _accion( Icons.group_add, 'INTÉGRATE'),

      ],
    );

  }

  Widget _accion(IconData icon, String texto ) {

    return Column(
      children: <Widget>[
        Icon( icon, color: Colors.teal, size: 40.0 ),
        SizedBox( height: 5.0 ),
        Text( texto, style: TextStyle( fontSize: 15.0, color: Colors.teal[900] ), )
      ],
    );

  }

  Widget _crearLista() {

    return  Container(
      height: 200,
      width: 300,
      child: ListView(
        scrollDirection: Axis.horizontal,
      children: <Widget>[

        

        _grupos('https://www.iglesiacei.org/wp-content/uploads/2019/11/Banner-Principal-1.jpg', 'https://www.youtube.com/watch?list=PLikeWnxC8V_vXvIbihJ0HMTZ4qK48Frwk&v=IWPugusq70M'),
        SizedBox( width: 5.0 ),
        _grupos('https://www.iglesiacei.org/wp-content/uploads/2019/11/Banner-principal-2.jpg', 'https://www.youtube.com/watch?list=PLikeWnxC8V_uanZu54PvtXeEi0wYEdgfB&v=A9WjZhECOio&feature=emb_title'),
        SizedBox( width: 5.0 ),
        _grupos('https://www.iglesiacei.org/wp-content/uploads/2019/11/banner-principal-3.jpg', 'https://www.youtube.com/watch?list=PLikeWnxC8V_scXtl18PIy1VJsGWT7jdxf&v=A73pErahnTs&feature=emb_title'),
        SizedBox( width: 5.0 ),
        _grupos('https://www.iglesiacei.org/wp-content/uploads/2019/11/Banner-Principal-4.jpg', 'https://www.youtube.com/watch?list=PLikeWnxC8V_tNstfvEjdpjDwu2y1nPBLa&v=DiSYP_po5oM&feature=emb_title'),
        SizedBox( width: 5.0 ),
        _grupos('https://www.iglesiacei.org/wp-content/uploads/2019/11/Banner-Principal-5.jpg', 'https://www.youtube.com/watch?list=PLikeWnxC8V_tWEQQjqPEnvwWYnEvjrwtV&v=jf5aEmLMeEQ&feature=emb_title'),
        SizedBox( width: 5.0 ),
       
        
        
              
         
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

   Widget _crearListaDevocion() {

    return  Container(
      height: 300,
      width: 300,
      child: ListView(
        scrollDirection: Axis.horizontal,
      children: <Widget>[

        // SizedBox( width: 5.0 ),
        _grupos('https://www.iglesiacei.org/wp-content/uploads/2019/11/dev1.png', 'https://www.iglesiacei.org/wp-content/uploads/2019/11/CEI-Devocionales-Campan%CC%83a-40-dias-con-proposito-vF-1.pdf'),
        // SizedBox( width: 2.0 ),
        _grupos('https://www.iglesiacei.org/wp-content/uploads/2019/11/dev2.png', 'https://www.iglesiacei.org/wp-content/uploads/2019/11/Devocional-2.pdf'),
        // SizedBox( width: 2.0 ),
        _grupos('https://www.iglesiacei.org/wp-content/uploads/2019/11/dev3.png', 'https://www.iglesiacei.org/wp-content/uploads/2019/11/CEI-Devocionales-Campan%CC%83a-40-dias-con-proposito-vF-1.pdf'),
        // SizedBox( width: 2.0 ),
        _grupos('https://www.iglesiacei.org/wp-content/uploads/2019/11/dev4.png', 'https://www.iglesiacei.org/wp-content/uploads/2019/11/CEI-60-Devocionales-Servicio-Compan%CC%83erismo-Adoracion-vF.pdf'),
        // SizedBox( width: 2.0 ),
        _grupos('https://www.iglesiacei.org/wp-content/uploads/2020/02/dev4.png', 'https://www.iglesiacei.org/wp-content/uploads/2020/02/CEI-49-Devocionales-Campa%C3%B1a-SWITCH-vF.pdf'),
        // SizedBox( width: 2.0 ),
        ],

        ),
    );
    

  }

 Widget _crearDevocional() {
    
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('Devocionales', style: estiloTitulo ,textAlign: TextAlign.center),
                  SizedBox( height: 3.0 ),
                  Text('¡Elige un devocional que quieras estudiar y encuentra la guía que Dios tiene para tu vida!\n',textAlign: TextAlign.center,),
                  
                  ],
              ),
            ),
          ],
        ),
      ),
    );
  }

 

  
}