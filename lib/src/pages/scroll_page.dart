import 'package:flutter/material.dart';


class ScrollPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          _pagina1(),
          _pagina2(context)
        ],
      )
    );
  }

  Widget _pagina1() {
    return Stack(
      children: <Widget>[
        _colorFondo(),
        _imagenFondo(),
        _textos(),
      ],
    );
  }


  Widget _colorFondo() {

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(69, 51, 255, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ]
        )
      ),
    );

  }

  Widget _imagenFondo() {

    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/Intro_CEI.jpg'),
        fit: BoxFit.cover,
      ),
    );

  }

  Widget _textos() {

    final estiloTexto = TextStyle(color: Colors.white, fontSize: 50.0, );
    
    

    return SafeArea(
      child: Column(
        children: <Widget>[
          SizedBox(height: 20.0 ),
          Text('Esta es tu aplicación\nCEI', style: estiloTexto,textAlign: TextAlign.center ),
          // Text('Bienvenidos', style: estiloTexto ),
          Expanded( child: Container() ),
          Icon( Icons.keyboard_arrow_down, size: 70.0, color: Colors.white )
        ],
      ),
    );

  }

  Widget _pagina2(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0, 0.6),
          end: FractionalOffset(0.0, 1.0),
          colors: [
            Color.fromRGBO(69, 51, 255, 1.0),
            Color.fromRGBO(35, 37, 57, 1.0)
          ]
        )
      ),
      child: Center(
        child: RaisedButton(
          shape: StadiumBorder(),
          color: Colors.blue,
          textColor: Colors.white,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
            child: Text('Bienvenidos', style: TextStyle(fontSize: 20.0)),
          ),
          onPressed: ()=> Navigator.pushNamed(context, 'botones'),
        ),
      ),
    );
  }


}