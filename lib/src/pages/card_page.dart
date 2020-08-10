
import 'package:flutter/material.dart';



class CardPage extends StatelessWidget {

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
            _cardTipoEdu    (),
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
            leading: Icon ( Icons.supervised_user_circle, color: Colors.red,),
            title: Text('Proclamación', style: estiloTitulo,textAlign: TextAlign.justify),
            subtitle: Text('En este ministerio nos preocupamos por ofrecerte un acompañamiento en tu camino con Dios a través de los GEFs (grupos de estudio familiar) Hay uno para ti! \nDéjanos tus datos y te contactaremos con el GEF más cercano a ti!', textAlign: TextAlign.justify,),          
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Ver mas'),
                onPressed: (){}, 
                ),

            ],
            

          )

        ],

      ),

    );


  }

   _cardTipoPesca() {

    final card = Card(
      child: Column(
        children: <Widget>[
          FadeInImage(
               image: NetworkImage('https://www.iglesiacei.org/wp-content/uploads/2018/03/prueba-casa-1.png'),
               placeholder: AssetImage('assets/jar-loading.gif'),
               fadeInDuration: Duration(milliseconds: 200),
               height: 290,
               fit: BoxFit.cover,
              
            ),
          
         
          //
              Container(
              padding: EdgeInsets.all(20),
              child: Text('P. E. S. C. A.', style: estiloTitulo,),

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
                  image: NetworkImage('https://www.iglesiacei.org/wp-content/uploads/2018/04/EQUIPOS.jpg'),
                  placeholder: AssetImage('assets/jar-loading.gif'),
                  fadeInDuration: Duration(milliseconds: 200),
                  height: 200,
                  fit: BoxFit.cover,            
          ),
      ),
    );
  }

 Widget _cardTipoEdu() {

    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon ( Icons.book, color: Colors.orange,),
            title: Text('Enseñanza', style: estiloTitulo,textAlign: TextAlign.justify),
            subtitle: Text('Lucas le dice en el capítulo 1 a Teófilo “Para que conozcas bien la verdad de las cosas en las cuales has sido instruido”. Nuestras metas son que tanto los creyentes y los líderes tengan bases sólidas en la doctrina de lo que creemos. Así disminuímos las interpretaciones erróneas de la Bíblia, fortaleceremos nuestra relación con Dios y crecer en el fundamento Bíblico que nos transforma de adentro hacia afuera.', textAlign: TextAlign.justify,),          
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Ver mas'),
                onPressed: (){}, 
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
            leading: Icon ( Icons.person_pin, color: Colors.yellow,),
            title: Text('Servicio', style: estiloTitulo,textAlign: TextAlign.justify),
            subtitle: Text('Es nuestro profundo interés desarrollar una fe íntegra y práctica en la que podamos pasar de lo intangible a lo tangible, de los pensamientos a los hechos y de la planta al fruto. Por eso trabajamos por servirle a Dios sirviendo le a los demás a través de la atención a todas las personas que nos visitan cada fin de semana.\nTambién tenemos a cargo la fundación Escala en la que niños y jóvenes son capacitados académicamente y son entrenados para desarrollarse con proyección en su contexto social y espiritual.', textAlign: TextAlign.justify,),          
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Ver mas'),
                onPressed: (){}, 
                ),
            ],
            

          )

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
            leading: Icon ( Icons.people_outline, color: Colors.green,),
            title: Text('Compañerismo', style: estiloTitulo,textAlign: TextAlign.justify),
            subtitle: Text('En este ministerio nos encargamos de que tengas una experiencia amable y amigable dentro de los servicios en la iglesia. Hay personas dispuestas a ayudarte en cualquier momento pues creemos que nuestro mejor servicio a Dios es servirle a las personas con pasión y dedicación.\nLibres para Amar es un seminario especializado para equiparte a vivir tu vida en pareja bajo los principios de Dios. Tenemos una clase al mes en la que compartimos y crecemos para tener familias sanas y saludables. Puedes entrar en cualquier momento.', textAlign: TextAlign.justify,),          
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Ver mas'),
                onPressed: (){}, 
                ),
            ],
            

          )

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
            leading: Icon ( Icons.music_note, color: Colors.blue,),
            title: Text('Adoración', style: estiloTitulo,textAlign: TextAlign.justify),
            subtitle: Text('Este equipo está formado por adoradores que buscan una comunión profunda con Dios a través de la música y la creatividad. Nos esforzamos con pasión por encontrar un sonido auténtico que nos inspire a sentir a Dios y que atraiga la presencia de Jesús cada vez que respondemos al llamado de servirle a Él y a la iglesia con la música, los medios, diseños, videos, fotografía y redes sociales.', textAlign: TextAlign.justify,),          
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Ver mas'),
                onPressed: (){}, 
                ),
            ],
            

          )

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
            title: Text('Depeer', style: estiloTitulo,textAlign: TextAlign.justify),
            subtitle: Text('Somos una nueva generación que busca a Dios con pasión. Nuestro propósito es inspirar a todos los jóvenes para que juntos construyamos una relación más profunda con Dios que logre impactar nuestras vidas y nuestro entorno. En nuestro eventos y congresos compartimos y nos divertimos a la vez que oramos y adoramos con la energía y entrega que nos caracteriza', textAlign: TextAlign.justify,),          
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(
                child: Text('Ver mas'),
                onPressed: (){}, 
                ),
            ],
            

          )

        ],

      ),

    );


  }

}