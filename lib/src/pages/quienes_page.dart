import 'package:flutter/material.dart';

class QuienesPage extends StatelessWidget {
  
  final estiloTitulo    = TextStyle( fontSize: 20.0, fontWeight: FontWeight.bold );
  final estiloSubTitulo = TextStyle( fontSize: 18.0, color: Colors.grey );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _crearImagen1 (context),
            _crearTitulo  (),
            _crearAcciones(),
            _crearTexto1  (),
            _crearImagen2 (),
            _crearTexto2  (),
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
  
  Widget _crearImagen1(BuildContext context) {
    return Container(
      width: double.infinity,
      child: GestureDetector(
        onTap: ()=> Navigator.pushNamed(context, 'scroll'),
        child: 
        FadeInImage(
                  image: NetworkImage('https://www.iglesiacei.org/wp-content/uploads/2018/04/quienes-somos.jpg'),
                  placeholder: AssetImage('assets/jar-loading.gif'),
                  fadeInDuration: Duration(milliseconds: 200),
                  height: 200,
                  fit: BoxFit.cover,            
          ),
      ),
    );
  }
  
  Widget _crearImagen2() {
    return Container(
      width: 300.0,
      height: 300.0,
      child: 
        FadeInImage(
                  image: NetworkImage('https://www.iglesiacei.org/wp-content/uploads/2018/05/djoya_ph-9.jpg'),
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
                  Text('En esto creémos', style: estiloTitulo ,textAlign: TextAlign.center),
                  SizedBox( height: 7.0 ),
                  Text('"Ser una iglesia saludable que refleja a Jesús, aprende de Dios, sirve con pasión, crece en comunidad y adora sin condición"', style: estiloSubTitulo, textAlign: TextAlign.center ),
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
        child: Text('Creemos en el amor del Padre, en la salvación de Jesucristo y en la compañía del Espíritu Santo. Nuestras creencias son columnas de la verdad. Por eso, aunque cambien los métodos nuestros fundamentos y creencias nos harán permanecer como iglesia.\n\n',textAlign: TextAlign.justify,
        ),
      ),
    );

  }
  
  Widget _crearTexto2() {

    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric( horizontal: 40.0 ),
        child: Text('El llamado  pastoral de Humberto Fajardo ha sido básicamente a la formación de varias generaciones de líderes y pastores en Colombia y en  varios países de Asia, Europa y América Latina.\n\nSe ha desempeñado en tareas organizacionales y se ha caracterizado por la exposición de la Palabra de Dios aplicada al contexto contemporáneo de forma vehemente y con la gracia que Dios le ha concedido.\n\nSu preocupación por la transformación de las personas en un estilo de vida diferente, ha motivado al pastor Fajardo a liderar la iglesia en Bogotá y a su denominación cristiana Asambleas de Dios en Colombia, con base en principios  bíblicos y la aplicación de valores medulares.\n\nDentro de su currículum que ha desarrollado durante casi 4 décadas, se puede mencionar la docencia teológica , varios cargos organizacionales, conferencista en diversos eventos nacionales e internacionales, escritor de   Artículos y presentador de programas de televisión y radio.\n\nActualmente pastorea apasionadamente su iglesia en Bogotá, participa como conferencista en diversos eventos de pastores y líderes y la Dirección Nacional de la denominación cristiana a la cual pertenece, inspirando y trasladando el legado a sus hijos, quienes con pasión sirven a la causa de Jesús el Señor.\n',textAlign: TextAlign.justify,
        ),
      ),
    );

  }

}