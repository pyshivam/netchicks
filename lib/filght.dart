import 'package:flutter/material.dart';

class FlightExample extends StatefulWidget {
  @override
  FlightExampleState createState() {
    return new FlightExampleState();
  }
}

class FlightExampleState extends State<FlightExample> {

  var _alignment = Alignment.center;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        padding: EdgeInsets.all(10.0),
        duration: Duration(seconds: 2),
        color: Colors.deepPurple,
        alignment: _alignment,
        child: Container(
          color: Colors.transparent,
          height: 300,
          child: Icon(Icons.airplanemode_active, size: 50.0, color: Colors.green[300],),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.blueAccent,
          onPressed: (){
            setState(() {
              _alignment = Alignment.topCenter;
            });
          },
          icon: Icon(Icons.airplanemode_active),
          label: Text("Take Flight")),
    );
  }
}