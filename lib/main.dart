import 'package:flutter/material.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "My Flutter",
      home: new Homepage(),
      theme: new ThemeData(
        primarySwatch: Colors.amber,
        brightness: Brightness.dark
      ),
    );
  }
}

class Homepage extends StatefulWidget {
  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<Homepage> {

  String mytext= "You";

void _ChangeText(){
  setState(() {
    if(mytext.startsWith("Y")){
        mytext="Can change Yourself";
    }else{
      mytext = "You";
    }
  });
}

Widget _bodywidget(){
   return Container(
     child: new Center(
       child: new Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget>[
          new Text(mytext,
          style: TextStyle(fontSize: 25.0,
          fontStyle: FontStyle.italic),)
         ],
       ),
     ),
   );
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: new AppBar(
      title: new Center(child: Text("Motivational Talks",
        style: TextStyle(fontSize: 20.0,
            fontStyle: FontStyle.italic),),),
    ),
    floatingActionButton: new FloatingActionButton(
      child: new Icon(Icons.add,
      color: Colors.white),
      onPressed: _ChangeText,
      backgroundColor: Colors.red,
    ),
    body: _bodywidget(),
  );
}
}


