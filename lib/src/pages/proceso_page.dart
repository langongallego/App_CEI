import 'package:flutter/material.dart';

class ProcesoPage extends StatelessWidget {
  
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
            _crearAcciones        (),
            SizedBox( height: 15.0 ),
            _crearImagenConoce    (),
            _crearConoce          (),
            _crearImagenEmpodera  (),
            _crearEmpodera        (),
            _crearImagenIntegra   (),
            _crearIntegra         (),
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
                    image: NetworkImage('https://www.iglesiacei.org/wp-content/uploads/2018/02/procesos.jpg'),
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
      height: 300.0,
      child: 
        FadeInImage(
                  image: NetworkImage('https://www.iglesiacei.org/wp-content/uploads/2018/02/C1.jpg'),
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
                  Text('Nuestro proceso CEI', style: estiloTitulo ,textAlign: TextAlign.center),
                  SizedBox( height: 7.0 ),
                  Text('El proceso CEI es un recurso que te ayudará a encontrar respuestas para vivir mejor con la base de una relación personal con Jesús. Aquí podrás fortalecer tus convicciones en Dios, encontrarás herramientas para lograr una madurez espiritual y descubrirás cómo puedes servirle a Dios sirviendole a los demás.\nEl proceso contiene tres series. Cada serie tiene módulos que contienen determinado número de lecciones. Estos contenidos son cíclicos de manera que podrás ingresar a cada módulo en cualquier clase o lección. Cuando finalices el módulo, podrás pasar al siguiente.', style: estiloSubTitulo, textAlign: TextAlign.justify ),
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
                  Text('CONOCE', style: estiloTitulo ,textAlign: TextAlign.center),
                  SizedBox( height: 7.0 ),
                  Text('En esta serie conocerás el ABC de la vida cristiana. Aquí inicia tu viaje con todo lo necesario para crecer en tu relación con Dios. Empezarás a entender el sentido de nuestra fe y a seguir de una manera fácil y lógica el estudio de la Biblia. Al final podrás dar el paso de obediencia y demostrar públicamente tu fe en Dios bautizándose.\n',textAlign: TextAlign.justify,),
                  Text('Módulos\n1. ABC de la vida cristiana (6 sesiones)',textAlign: TextAlign.justify),

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

  Widget _crearImagenEmpodera  () {
    return Container(
      width: 300.0,
      height: 300.0,
      child: 
        FadeInImage(
                  image: NetworkImage('https://www.iglesiacei.org/wp-content/uploads/2018/02/E1.jpg'),
                  placeholder: AssetImage('assets/jar-loading.gif'),
                  fadeInDuration: Duration(milliseconds: 200),
                  height: 200,
                  fit: BoxFit.cover,            
          ),
    );
  }

  Widget _crearEmpodera  () {
    
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('EMPÓDERATE', style: estiloTitulo ,textAlign: TextAlign.center),
                  SizedBox( height: 7.0 ),
                  Text('En esta serie darás un paso más grande en tu crecimiento cristiano y en tu realización personal para fortalecer tu relación con Dios. Conocerás todos los atributos que Dios ha puesto en ti como su hijo y sus expectativas hacia ti como su creación más especial.\nAl final de esta serie estarás en la capacidad de entrar en un nivel espiritual más alto y de seguro vas a querer compartir estas buenas noticias que salvan vidas a familiares y amigos.\n',textAlign: TextAlign.justify,),
                  Text('Módulos\n1. Madurez cristiana (6 sesiones)\n2. Claves de Poder (6 sesiones)\n3. Hacia una Restauración plena (6 sesiones)',textAlign: TextAlign.justify),

                  ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearImagenIntegra   () {
    return Container(
      width: 300.0,
      height: 300.0,
      child: 
        FadeInImage(
                  image: NetworkImage('https://www.iglesiacei.org/wp-content/uploads/2018/02/I1.jpg'),
                  placeholder: AssetImage('assets/jar-loading.gif'),
                  fadeInDuration: Duration(milliseconds: 200),
                  height: 200,
                  fit: BoxFit.cover,            
          ),
    );
  }

  Widget _crearIntegra  () {
    
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: <Widget>[

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('INTÉGRATE', style: estiloTitulo ,textAlign: TextAlign.center),
                  SizedBox( height: 7.0 ),
                  Text('Aquí conocerás tu papel dentro del cuerpo de  Cristo. Entenderás la importancia del llamo a servir en la extensión del reino de Dios en la tierra.\nTe inspiraras en personajes bíblicos que marcaron la diferencia para que ahora tu inspires a muchos otros a acercarse a Jesús.\nEstarás listo para involucrarte en alguno de los equipos de la iglesia y así servirle a Dios sirviéndole a los demás\n',textAlign: TextAlign.justify,),
                  Text('Módulos\n1. El líder y su perfil\n2. Liderazgo cristianoMadurez cristiana (6 sesiones)\n',textAlign: TextAlign.justify),
                  ],
              ),
            ),
          ],
        ),
      ),
    );
  }


}