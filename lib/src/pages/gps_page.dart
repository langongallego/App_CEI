// import 'package:CEI/src/pages/listview_page.dart';
import 'package:flutter/material.dart';

class GpsPage extends StatelessWidget {
  
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
            _crearLista   (),
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
                  imageSemanticLabel: 'hola',
                  image: NetworkImage('https://www.iglesiacei.org/wp-content/uploads/2019/10/bggps.jpg'),
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
      height: 200,
      width: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
      children: <Widget>[

        SizedBox( width: 5.0 ),
        _grupos('https://www.iglesiacei.org/wp-content/uploads/2019/11/Henry-y-Sofia.jpg', 'Henry & Sofia'),
        SizedBox( width: 5.0 ),
        _grupos('https://www.iglesiacei.org/wp-content/uploads/2020/01/Petroleo.png', 'William y Heidy'),
        SizedBox( width: 5.0 ),
        _grupos('https://www.iglesiacei.org/wp-content/uploads/2020/01/Sigri.png', 'Sigri'),
        SizedBox( width: 5.0 ),
        _grupos('https://www.iglesiacei.org/wp-content/uploads/2020/02/Andre-y-Sebas.png','Sebastián y Andrea'),
        SizedBox( width: 5.0 ),
        _grupos('https://www.iglesiacei.org/wp-content/uploads/2019/11/Rubiel.jpg','Rubiel y Luz Mary Navarro'),
        SizedBox( width: 5.0 ),
        _grupos('https://www.iglesiacei.org/wp-content/uploads/2020/01/Ibeth-y-Ricardo.png','Ricardo e Ibeth'),
        SizedBox( width: 5.0 ),
        _grupos('https://www.iglesiacei.org/wp-content/uploads/2019/11/Maria-Teresa.jpg','María Teresa'),
        SizedBox( width: 5.0 ),
        _grupos('https://www.iglesiacei.org/wp-content/uploads/2019/11/marce.png','Marcela Velazco'),
        SizedBox( width: 5.0 ),
        _grupos('https://www.iglesiacei.org/wp-content/uploads/2020/01/Silvios.png','Luis y Martha'),
        SizedBox( width: 5.0 ),
        _grupos('https://www.iglesiacei.org/wp-content/uploads/2019/11/Jose-y-Marce.jpg','Jose & Marce'),
        SizedBox( width: 5.0 ),
        _grupos('https://www.iglesiacei.org/wp-content/uploads/2019/10/3.jpg','John & Ana'),
        SizedBox( width: 5.0 ),
        _grupos('https://www.iglesiacei.org/wp-content/uploads/2020/02/Jazmina1.png','Jazmina Guerra'),
        SizedBox( width: 5.0 ),
        _grupos('https://www.iglesiacei.org/wp-content/uploads/2020/01/William-y-Sandra.png','William y Sandra'),
        SizedBox( width: 5.0 ),
        _grupos('https://www.iglesiacei.org/wp-content/uploads/2019/11/Jairo-Cuesta.jpg','Jairo Cuesta'),
        SizedBox( width: 5.0 ),
        _grupos('https://www.iglesiacei.org/wp-content/uploads/2019/11/Guillermo-Munoz.jpg','Guillermo Muñoz'),
        SizedBox( width: 5.0 ),
        _grupos('https://www.iglesiacei.org/wp-content/uploads/2020/01/Huege.png','Gerson y Jenny'),
        SizedBox( width: 5.0 ),
        _grupos('https://www.iglesiacei.org/wp-content/uploads/2019/11/Esteban-e-Ivon.jpg','Esteban & Ivon'),
        SizedBox( width: 5.0 ),
        _grupos('https://www.iglesiacei.org/wp-content/uploads/2019/11/Diego-Neira.jpg','Diego Neira'),
        SizedBox( width: 5.0 ),
        _grupos('https://www.iglesiacei.org/wp-content/uploads/2019/11/Andres-C.jpg', 'Andrés C.'),
        SizedBox( width: 5.0 ),
        _grupos('https://www.iglesiacei.org/wp-content/uploads/2020/01/Alex-y-Gloria.png', 'Alex y Gloria'),
        SizedBox( width: 5.0 ),
        _grupos('https://www.iglesiacei.org/wp-content/uploads/2019/10/1.jpg','Alex & María Cristina'),
        SizedBox( width: 5.0 ),
              
         
        ],

        ),
    );
    

  }

  Widget _grupos( String url, String texto){

    return Column(
                children: <Widget>[
                  Container(
                    height: 150,
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
                  Text('Grupo Pequeño Saludable', style: estiloTitulo ,textAlign: TextAlign.center),
                  SizedBox( height: 7.0 ),
                  Text('Es un espacio en el que hacemos amigos y crecemos espiritualmente en compañía de más personas como tú.\n¡En los GPS buscamos alcanzar una vida cristiana saludable!', style: estiloSubTitulo, textAlign: TextAlign.center ),
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

        _accion( Icons.call, 'CALL' ),
        _accion( Icons.near_me, 'ROUTE' ),
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

  Widget _crearTexto1() {

    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric( horizontal: 40.0 ),
        child: Text('\n¡Encuentra el Grupo perfecto para Ti!\n',style: estiloTitulo ,textAlign: TextAlign.justify,
        ),
      ),
    );

  }
  

}