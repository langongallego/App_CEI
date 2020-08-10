
import 'package:flutter/material.dart';



class EventosPage extends StatelessWidget {

  final estiloTitulo    = TextStyle( fontSize: 20.0, fontWeight: FontWeight.bold );
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _crearImagen1(context),
            _cardTipoPesca  (),
            _cardTipoProcla (),
            _cardTipoEdu    (context),
            _cardTipoServ   (), 
            _cardTipoCompa  (),            
            _cardTipoAdorar (),
            _cardTipoDepeer (),
          ],
        ),
      ),
    bottomNavigationBar: _bottomNavigationBar(context)
    );
  }

  Widget _cardTipoProcla() {

    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon ( Icons.grade, color: Colors.blue[800],),
            title: Text('Noches con Jesús', style: estiloTitulo,textAlign: TextAlign.justify),
            subtitle: Text('El último viernes de cada mes nos reunimos para disfrutar una experiencia de adoración profunda. Es un tiempo de alabanza y adoración en el que nos inspiramos reconociendo las cualidades de nuestro Dios para recibir esperanza, paz y libertad.\n\nHorarios\n*A partir del último viernes de  abril hasta finalizar el año\n 6:00pm oración previa -\n7:00pm Noche con Jesús', textAlign: TextAlign.justify,),          
          ),
          
        ],

      ),

    );


  }

   _cardTipoPesca() {

    final card = Card(
      child: Column(
        children: <Widget>[
          FadeInImage(
               image: NetworkImage('https://www.iglesiacei.org/wp-content/uploads/2018/04/WhatsApp-Image-2018-04-17-at-19.42.24.jpeg'),
               placeholder: AssetImage('assets/jar-loading.gif'),
               fadeInDuration: Duration(milliseconds: 200),
               height: 290,
               fit: BoxFit.cover,
              
            ),
          
         
          //
              Container(
              padding: EdgeInsets.all(20),
              child: Text('Proximos eventos', style: estiloTitulo,),

              ),
          // 

        ],
      ),

    );
    return Container(
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.white10,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0)
          )
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
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
                  image: NetworkImage('https://www.iglesiacei.org/wp-content/uploads/2018/02/iglesia-web.jpg'),
                  placeholder: AssetImage('assets/jar-loading.gif'),
                  fadeInDuration: Duration(milliseconds: 200),
                  height: 200,
                  fit: BoxFit.cover,            
          ),
      ),
    );
  }

 Widget _cardTipoEdu(BuildContext context) {

    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon ( Icons.book, color: Colors.blue[900],),
            title: Text('Grupos GPS', style: estiloTitulo,textAlign: TextAlign.justify),
            subtitle: Text('“ Los seguidores de Jesús iban al templo todos los días, y también se reunían en las casas. Los apóstoles, por su parte, no dejaban de enseñar y de anunciar la buena noticia acerca de Jesús, el rey elegido por Dios.”\nLos Grupos de Estudio Familiar son espacios para compartir, fortalecer nuestra relación en comunidad y nuestra relación con Dios. ¡Oramos unos por otros, juntos crecemos en las enseñanzas de la palabra de Dios y compartimos experiencias de vida!¡Te invitamos a hacer parte de un GEF!\n', textAlign: TextAlign.justify,),          
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Ver mas'),
                onPressed: (){
                  
                Navigator.pushNamed(context, 'gps');
                }, 
                ),
            ],
            

          )

        ],

      ),

    );


  }

 Widget _cardTipoServ() {

    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon ( Icons.favorite, color: Colors.blue[900],),
            title: Text('Mujeres con propósito', style: estiloTitulo,textAlign: TextAlign.justify),
            subtitle: Text('Somos un grupo de mujeres que busca establecer el reino de Dios en la tierra a través de herramientas que fundamenten nuestra fe, nuestra conciencia y nuestros valores con la palabra de Dios.\nTenemos eventos durante todo el año en los que nos reunimos para conectar, crecer y desafiar nuestro papel de transformación en la sociedad\nHorarios\n* Último miércoles del mes\n 9:00am - 12:00pm', textAlign: TextAlign.justify,),          
          ),
         

        ],

      ),

    );


  }

Widget _cardTipoCompa() {

    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon ( Icons.people_outline, color: Colors.blue[900],),
            title: Text('Deeper', style: estiloTitulo,textAlign: TextAlign.justify),
            subtitle: Text('Es un espacio diseñado para jóvenes en el que buscamos profundizar nuestra relación con Dios y nuestras convicciones en Jesús. Nos reunimos para cultivar la pasión y la creatividad con la que fuimos creados.', textAlign: TextAlign.justify,),          
          ),
        ],

      ),

    );


  }

Widget _cardTipoAdorar() {

    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon ( Icons.music_note, color: Colors.blue[900],),
            title: Text('Conexión con Dios', style: estiloTitulo,textAlign: TextAlign.justify),
            subtitle: Text('Cada dos meses abrimos las puertas de la iglesia para que intimes con tu creador. Dedicamos toda la mañana exclusivamente a orar y a buscar a Dios sin distracciones.\nEn este tiempo podrás disfrutar de un ambiente seguro para que descubras la voz que Dios quiere que salga de ti.', textAlign: TextAlign.justify,),          
          ),
          
        ],

      ),

    );


  }

Widget _cardTipoDepeer() {

    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon ( Icons.thumb_up, color: Colors.indigo,),
            title: Text('¡Intégrate a Servir!', style: estiloTitulo,textAlign: TextAlign.justify),
            subtitle: Text('El servicio en la iglesia me ayuda a tener disciplina en mi relación con Dios. El hecho de ser responsable en alguna área de servicio en la iglesia demanda estar preparado espiritualmente.\nServir agrega un compromiso extra de mantener mi relación con Dios fresca y activa. La riqueza de mi relación con Dios se va a reflejar en mi servicio porque a través de lo que hago en la iglesia las personas van  a ver a Jesús.\nPuede que mi interacción con alguna de las personas con las que me relaciono en el servicio, sea la primera y la única vez en la que esa persona tenga la oportunidad de conocer a Jesús.\nEl servicio me ha ayudado a reconocer y valorar a las personas por lo que son y a mostrar el amor de Dios a través de las habilidades que Él mismo ha puesto en mi.', textAlign: TextAlign.justify,),          
          ),
        ],

      ),

    );


  }

}