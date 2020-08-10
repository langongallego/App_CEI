import 'package:CEI/src/pages/listview_page.dart';
import 'package:flutter/material.dart';

class MisionesPage extends StatelessWidget {
  
  final estiloTitulo    = TextStyle( fontSize: 20.0, fontWeight: FontWeight.bold );
  final estiloSubTitulo = TextStyle( fontSize: 18.0, color: Colors.grey );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: <Widget>[
            
            _crearImagen1      (context),
            _crearTitulo       (),
            _crearAcciones     (),
            _crearImagenAfrica (),
            _crearMisiones     (),
            _crearLista        (),
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
    return Container(
      width: double.infinity,
      child: GestureDetector(
        onTap: ()=> Navigator.pushNamed(context, 'scroll'),
        child: 
        FadeInImage(
                  image: NetworkImage('https://www.iglesiacei.org/wp-content/uploads/2018/06/misiones-2.jpg'),
                  placeholder: AssetImage('assets/jar-loading.gif'),
                  fadeInDuration: Duration(milliseconds: 200),
                  height: 200,
                  fit: BoxFit.cover,            
          ),
      ),
    );
  }
  
  Widget _crearLista() {

    return  Container(
      height: 300,
      width: 300,
      child: ListView(
        scrollDirection: Axis.horizontal,
      children: <Widget>[

        SizedBox( width: 2.0 ),
        _grupos('https://www.iglesiacei.org/wp-content/uploads/2018/08/1-1024x1024.jpg', ''),
        SizedBox( width: 2.0 ),
        _grupos('https://www.iglesiacei.org/wp-content/uploads/2018/08/2-1-1024x1024.jpg', ''),
        SizedBox( width: 2.0 ),
        _grupos('https://www.iglesiacei.org/wp-content/uploads/2018/08/3-1024x1024.jpg', ''),
        SizedBox( width: 2.0 ),
        _grupos('https://www.iglesiacei.org/wp-content/uploads/2018/08/4-1024x1024.jpg', ''),
        SizedBox( width: 2.0 ),
        _grupos('https://www.iglesiacei.org/wp-content/uploads/2018/08/5-1024x1024.jpg', ''),
        SizedBox( width: 2.0 ),
        _grupos('https://www.iglesiacei.org/wp-content/uploads/2018/08/6-1024x1024.jpg', ''),
        SizedBox( width: 2.0 ),
        _grupos('https://www.iglesiacei.org/wp-content/uploads/2018/08/7-1024x1024.jpg', ''),
        SizedBox( width: 2.0 ),
        _grupos('https://www.iglesiacei.org/wp-content/uploads/2018/08/8-1024x1024.jpg', ''),
        SizedBox( width: 2.0 ),
       
              
         
        ],

        ),
    );
    

  }

  Widget _grupos( String url, String texto){

    return Column(
                children: <Widget>[
                  Container(
                    height: 190,
                    width: 200,
                    child: FadeInImage(
                    placeholder: AssetImage('assets/jar-loading.gif'),           
                    image: NetworkImage('$url'),
                    ),
                  ),
                  Text('$texto',style: estiloSubTitulo ,textAlign: TextAlign.center ),
                ],
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
                  Text('Misiones en el África', style: estiloTitulo ,textAlign: TextAlign.center),
                  SizedBox( height: 7.0 ),
                  Text('Gracias a la generosidad de las personas de esta iglesia hemos podido apoyar apasionadamente la misión humanitaria de Sonia Eslava en Costa de Marfil - África, durante más de 10 años.\nSonia Eslava salió de nuestra iglesia hace 12 años a cumpir un llamado especial. Esta misión interdenominacional no ha recibido nuestro único apoyo. Muchas iglesia alrededor del mundo se han unido para seguir alcanzando logros como estos:', style: estiloSubTitulo, textAlign: TextAlign.justify ),
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

        _accion( Icons.map, 'Africa' ),
        _accion( Icons.share, 'Share'),

      ],
    );

  }

  Widget _accion(IconData icon, String texto ) {

    return Column(
      children: <Widget>[
        Icon( icon, color: Colors.blue, size: 40.0 ),
        SizedBox( height: 5.0 ),
        Text( texto, style: TextStyle( fontSize: 15.0, color: Colors.blue ), )
      ],
    );

  }

  Widget _crearImagenAfrica  () {
    return Container(
      width: 400.0,
      height: 400.0,
      child: 
        FadeInImage(
                  image: NetworkImage('https://www.iglesiacei.org/wp-content/uploads/2018/06/WhatsApp-Image-2018-06-06-at-18.37.39.jpeg'),
                  placeholder: AssetImage('assets/jar-loading.gif'),
                  fadeInDuration: Duration(milliseconds: 200),
                  height: 300,
                  fit: BoxFit.scaleDown,            
          ),
    );
  }


  Widget _crearMisiones() {
    
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('Misiones en el África', style: estiloTitulo ,textAlign: TextAlign.center),
                  SizedBox( height: 7.0 ),
                  Text('\n\u2022 Vacunación del 2013 al 2018 de 20.000 personas\n\u2022 Curaciones del 2001 al 2018 de 50.0000 personas\n\u2022 Ayudas médicas a más de un millón de personas desde el 2001 hasta el 2018\n\u2022 Evangelización, formación de pastores y maestros\n\u2022 Formación de líderes \n\u2022 Formación de padres de familia\n\u2022 Consejería\n\u2022 Seminarios\n\u2022 Campamentos\n\u2022 Distribución de tratados\n\u2022 Grupos en las casas\n\u2022 Bases de discipulado\n\u2022 Formación de adolescentes', style: estiloSubTitulo, textAlign: TextAlign.justify ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}