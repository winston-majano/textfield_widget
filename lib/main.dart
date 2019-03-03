import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: MyTextField(),
  ));
}

class MyTextField extends StatefulWidget {
  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {

String inputValue = "";

//controller para limpiar la caja de texto
  final TextEditingController controller = new TextEditingController();


  void onsubmitted(String value){
    //print(value);
    setState(() {
      inputValue =  inputValue+ " \n "+value;

      //limpiando la caja de texto
      controller.clear();
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("TextField"),
        backgroundColor: Colors.orange,
      ),
      body: new Container(
        child: Center(
          child: Column(
            children: <Widget>[
              new Padding(padding: EdgeInsets.all(10.5)),
              new TextField(
                decoration: new InputDecoration(hintText: "Ingrese el texto aqui"),
                //evento cuando se termina de ingresar el texto
                onSubmitted: (String value) { onsubmitted(value);},
                controller: controller,
              ),
              new Text(inputValue),
            ],
          ),
        ),
      ),
    );
  }
}
