import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class IntroPage extends StatelessWidget {

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:  PageView(
      scrollDirection: Axis.vertical,
        children: <Widget>[
          _pagina1(),
          _pagina2(context),
        ],
      )
    );
  }

  Widget _pagina1(){

    return Stack(
      children: <Widget>[
        _colorFondo(),
        _imagenFondo(),
        _textos(),
      ],

    );

  }

  Widget _textos(){
    
    final estiloTexto = TextStyle(color: Colors.white, fontSize: 40, );
    return SafeArea(
      child: Column(
      children: <Widget>[
        SizedBox(height: 30.0,),
        Text('Bienvenido!', style: estiloTexto,),
        Text('Somos una iglesia saludable', style: TextStyle(color: Colors.white, fontSize: 30,), textAlign: TextAlign.center,),
        // Expanded(child: Center(
        //   widthFactor: 10.0,
        //   heightFactor: 10.0,
        //   child: Text('Somos una iglesia saludable', style: estiloTexto, textAlign: TextAlign.center,),
        // )),
        
        Expanded(child: Container()),
        Icon( Icons.keyboard_arrow_down, size: 70.0, color: Colors.white),

      ],
    ),
    );
  }

  Widget _colorFondo(){

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          // begin: FractionalOffset(0.0, 0.0),
          // end: FractionalOffset(1.0, 1.0),
          colors: [
            Colors.grey,
            Colors.blue[900],
          ],

          ),
      ),
    );
    
  }

  Widget _imagenFondo(){

    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Image(
        image: AssetImage('assets/Intro_CEI.jpg'),
      ),

    );
    
  }

  

  Widget _pagina2( BuildContext context ){

    return Stack(
      children: <Widget>[
        _colorFondo(),
        // _imagenFondo2(),
        Container(
            margin: EdgeInsets.all(20.0), 
            alignment: Alignment(0.1, 0.8), 
            child: RaisedButton(
            color: Colors.blue[800],  
            onPressed: () {
             Navigator.pushNamed(context, '/');
            },
            textColor: Colors.white,
            padding:  EdgeInsets.all(0.9),
            child: Container(
              
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                gradient: LinearGradient(
                  begin: FractionalOffset(0.0, 0.6),
                  end: FractionalOffset(0.0, 1.0),
                  colors: [
                    Color.fromRGBO(69, 51, 255, 1.0),
                    Color.fromRGBO(35, 37, 57, 1.0)
                  ]
                ),
              ),
               padding:  EdgeInsets.all(20.0),
              child:
                   Text('Ingresa aqui!', style: TextStyle(fontSize: 20)),
            ),
          ),
      ),
      ],


    );
        
  }

   
}