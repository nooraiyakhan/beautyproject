import 'package:beautyproject/splashscreen.dart';
import 'package:flutter/material.dart';

void main() =>
  runApp(MyApp());
  Color mainheader=Colors.blue;
  Color subheader=Colors.lightBlue;
  Color subwhite=Color(0xFFf4f4f4);
  String pageDirect="";
  int selectPage=0;


class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Booking',
      debugShowCheckedModeBanner: false,
     
      theme: ThemeData(
      
        primarySwatch:subheader,
        
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Splashscreen(),
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key key, this.title}) : super(key: key);



  final String title;

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
   
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      appBar: AppBar(
    
        title: Text(widget.title),
      ),
      body: Center(
      
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), 
    );
  }
}
