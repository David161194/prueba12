import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    final titles = ['bike', 'boat', 'bus', 'car',
      'railway', 'run', 'subway', 'transit', 'walk'];
    final subtitles = ['bike', 'boat', 'bus', 'car',
      'railway', 'run', 'subway', 'transit', 'walk'];

    final icons = [Icons.directions_bike, Icons.directions_boat,
      Icons.directions_bus, Icons.directions_car, Icons.directions_railway,
      Icons.directions_run, Icons.directions_subway, Icons.directions_transit,
      Icons.directions_walk];
   
    return ListView.builder(
      itemCount: titles.length,
      itemBuilder: (context, index) {
        return Card(

          margin: EdgeInsets.symmetric(vertical: 5.0),
          elevation: 20.0,
          color: Colors.amber,//                           <-- Card widget
          child: ListTile(
            contentPadding: EdgeInsets.symmetric(vertical: 10.0),
            subtitle: Text(subtitles[index]),
            leading: Icon(icons[index]),
            title: Text(titles[index],
        //  textAlign: TextAlign.center,
              style: TextStyle(
                 fontSize: 25.0,
                color: Colors.white

              ),
            ),
        ),
        );
      },
    );

  }
}
