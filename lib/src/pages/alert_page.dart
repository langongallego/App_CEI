
import 'package:flutter/material.dart';


class AlertPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text ('Pagina de alertas'),
      ),

      body: Center(
        child: RaisedButton(
          child:  Text('Esto es una alerta'),
          color: Colors.blue,
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed: () => _mostrarAlert(context),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.assignment_return),
        onPressed: (){
          Navigator.pop(context);
        }
        ),

    );
  }


  void _mostrarAlert(BuildContext context){

    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('Aca es el titulo'),
          backgroundColor: Colors.blue,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Aca va todo el texto de la alerta'),
              FadeInImage(
                  image: NetworkImage('https://www.iglesiacei.org/wp-content/uploads/2019/09/logo-mini.png'),
                  placeholder: AssetImage('assets/jar-loading.gif'),
                  fadeInDuration: Duration(milliseconds: 200),
                  height: 300,
                  fit: BoxFit.scaleDown,            
          ),

            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text(
                        'ok',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                      ),             
              onPressed: (){
                Navigator.of(context).pop();
              }, 
              ),
               FlatButton(
              child: Text(
                        'Cancelar',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                      ),
              onPressed: ()=>Navigator.of(context).pop(), 
              ),
          ],
          
        );


      }
      );


  }
}