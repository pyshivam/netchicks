import 'package:flutter/material.dart';
import 'package:netchicks/dashboard/dashboard.dart';
import 'package:netchicks/filght.dart';

class Signup extends StatelessWidget {
  const Signup({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      width: 280,
      child: FlatButton(
        color: Color.fromRGBO(19, 21, 41, 100),
        splashColor: Colors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Dashboard()),
          );
        },
        child: Text(
          "Start Watching",
          style: new TextStyle(
            color: Color.fromRGBO(193, 193, 193, 100),
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

class Login extends StatelessWidget {
  final title;
  const Login({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      width: 280,
      child: OutlineButton(
        // color: Color.fromRGBO(19, 21, 41, 100),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        highlightedBorderColor: Color.fromRGBO(255, 255, 255, 20),
        borderSide: BorderSide(
          width: .5,
          color: Color.fromRGBO(193, 193, 193, 100),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FlightExample()),
          );
        },
        child: Text(
          title,
          style: new TextStyle(
            color: Color.fromRGBO(193, 193, 193, 100),
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
