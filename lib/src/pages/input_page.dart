import 'package:flutter/material.dart';


class InputPage extends StatefulWidget {

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  String _nombre;
  int _maxNombre = 50;
  String _email;
  String _password;
  String _fecha;
  String _opcioneSeleccionada = 'Leonardo';
  
  List<String> _integrantes = ['Leonardo', 'Mateo', 'Alex', 'Humberto', 'Olga'];

  TextEditingController _inputFieldDateController = new TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('input de texto'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric( horizontal: 20.0, vertical: 20.0  ),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _crearEmail(),
           Divider(),
           _crearPassword(),
           Divider(),
          _crearFecha(context),
            Divider(),
          _crearDropdown(),
           Divider(),
          _crearPersona(),
        ],
      ),

    );
  }

  Widget _crearInput() {
    
    return TextField(
      // autofocus: true,
      maxLength: 50,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
         
        counter: Text('Letras max: $_maxNombre '),
        hintText: 'Tu nombre',
        labelText: 'Nombre',
        helperText: 'e.g., William David',
        suffixIcon: Icon(Icons.accessibility_new),
        icon: Icon(Icons.account_circle),
        
      ),
      onChanged: ( valor ){
        setState(() {
          _nombre = valor;
          _maxNombre = _maxNombre - 1;
        });
        
        
      },

    );
  }
   
   
   Widget _crearEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      keyboardAppearance: Brightness.light,
        decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
         
        hintText: 'Email',
        labelText: 'Correo personal',
        helperText: 'e.g., william.gallego@cei.org',
        suffixIcon: Icon(Icons.alternate_email),
        icon: Icon(Icons.email),
        
      ),
      onChanged: ( valor ){
        setState(() {
          _email = valor;
        });
        
        
      },

    );

  }

  Widget _crearPassword(){
    
    return TextField(
      obscureText: true,
        decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
         
        hintText: 'Password',
        labelText: 'Contraseña',
        helperText: 'incluye caracteres y numeros',
        suffixIcon: Icon(Icons.lock_open),
        icon: Icon(Icons.lock),
        
      ),
      onChanged: ( valor ){
        setState(() {
          _password = valor;
        });
        
        
      },

    );


  }

  Widget _crearFecha(BuildContext context){

    return TextField(
        
        enableInteractiveSelection: false,
        controller: _inputFieldDateController,
        decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
         
        hintText: 'Fecha nacimiento',
        labelText: 'Fecha nacimiento',
        helperText: 'Selecciona tu fecha de naciemiento',
        suffixIcon: Icon(Icons.perm_contact_calendar),
        icon: Icon(Icons.calendar_today),
        
      ),

      onTap: (  ){
        
        FocusScope.of(context).requestFocus( new FocusNode());
        _selectDate(context);
      },

    );
  }

  _selectDate ( BuildContext context ) async {

    DateTime picked = await showDatePicker(
      helpText: 'Selecciona la fecha',
      context: context, 
      initialDate: new DateTime.now(),
      firstDate: new DateTime(1900),
      lastDate: new DateTime(2021),
      locale: Locale('es','ES'),
      );

      if ( picked != null ) {
        setState(() {
          _fecha = picked.toString();
          _inputFieldDateController.text =_fecha;
        });
      }


  }

  List<DropdownMenuItem<String>> getOpcionesDropdown() {

  List<DropdownMenuItem<String>> lista = new List();

  _integrantes.forEach( (integrante) {
    
    lista.add( DropdownMenuItem(
        child: Text(integrante),
        value: integrante,
        )
    );
  });
  return lista;
  }

Widget _crearDropdown(){
  return Row(
    children: <Widget>[
      Icon(Icons.select_all),
      SizedBox(width: 30.0),  
      DropdownButton(
        value: _opcioneSeleccionada,
        items: getOpcionesDropdown(), 
        onChanged: ( opt ){
          setState(() {
          _opcioneSeleccionada = opt;        
          });
        }
      ),
    ],
  );

}



  Widget _crearPersona() {
    return ListTile(
      title: Text('El nombre es: $_nombre'),
      subtitle: Text('este es el Email: $_email'),
      trailing: Text(_opcioneSeleccionada),
    );

  }

  
}