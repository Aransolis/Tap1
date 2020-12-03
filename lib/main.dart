import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    //home: MyStatelessWidget(),
    home: MystatefulWidget(),
    ));
}
//stateful permite cambiar apariencia
class MystatefulWidget extends StatefulWidget {
 MystatefulWidget({Key key}) : super(key: key);

  @override
   MystatefulWidgetState createState() =>  MystatefulWidgetState();
}

class  MystatefulWidgetState extends State <MystatefulWidget> {
  var contador = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text('Practica 1 TAP'), 
      centerTitle: true ,
      backgroundColor: Colors.red,
      ),
      body: Center(
        child: Text('Valor del contador:$contador')
      ),  
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.plus_one),
        onPressed: (){
          contador++;
          //print(contador);
          setState(() {
            
          });
        }
      ),
    );
  }
}
//stateless no permite cambiar apariencia
class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var contador = 0;
    return Scaffold(

      appBar: AppBar(title: Text('Practica 1 TAP'), 
      centerTitle: true ,
      backgroundColor: Colors.green,
      ),
      body: Center(
        child: Text('Valor del contador')
      ),  
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(Icons.plus_one),
        onPressed: (){
          contador++;
          //print(contador);
        }
      ),
    );
  }
}
