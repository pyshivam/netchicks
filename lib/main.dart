import 'dart:async';

import 'package:flutter/material.dart';
import 'package:netchicks/buttons/signup.dart';

void main() {
  runApp(
    new MaterialApp(
      title: "Netchicks",
      theme: ThemeData(fontFamily: 'Montserrat'),
      home: new SignupTestScreen(),
    ),
  );
}

class SignupTestScreen extends StatefulWidget {
  SignupTestScreen({Key key}) : super(key: key);

  @override
  _SignupTestScreenState createState() => _SignupTestScreenState();
}

class _SignupTestScreenState extends State<SignupTestScreen>
    with SingleTickerProviderStateMixin {
  Animation<double> animation;
  AnimationController animationController;
  var _animatedHeight = 100.0;
  var runAnimation = false;
  Timer _timer;
  Timer _timer2;
  var buttons;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000),
    );
    animation =
        Tween<double>(begin: 0.0, end: 80.0).animate(animationController);

    _timer = new Timer(Duration(milliseconds: 1000), () {
      setState(() {
        runAnimation = true;
      });
    });
_timer2 = new Timer(Duration(milliseconds: 2000), () {
      setState(() {
        buttons = Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    new Signup(),
                    new Login(
                      title: "Already Watching",
                    ),
                  ],
                );
      });
    });

    animation.addListener(() {
      setState(() {
        // _animatedHeight = animation.value;
        debugPrint(animation.value.toString());
      });
    });

    // MediaQuery.of(context).size.height / 2 - 166 / 2
  }

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    //- animation.value
    _animatedHeight =
        MediaQuery.of(context).size.height / 2 - 166 / 2 - animation.value;
    if (runAnimation) {
      animationController.forward();
    }
    return Container(
      color: Color(0xff000000),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: _animatedHeight,
            right: MediaQuery.of(context).size.width / 2 - 50,
            child: Container(
              height: 166,
              width: 100,
              child: Image.asset("assets/images/logo.png"),
            ),
          ),
          Container(
            child: Positioned(
              bottom: 50, 
              left: MediaQuery.of(context).size.width - (280 + 280/4),
              child: Container(
                height: 150,
                child: buttons,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(2, 4, 21, 60),
        body: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height - 150,
                child: Container(
                  child: Container(
                    // color: Colors.white,
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 100, bottom: 100),
                    child: Image.asset("assets/images/netflix_img.png"),
                  ),
                ),
              ),
              Container(
                height: 150,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    new Signup(),
                    new Login(
                      title: "Already Watching",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
