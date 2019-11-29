import 'package:flutter/material.dart';
import 'package:netchicks/icons.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Color.fromRGBO(2, 4, 21, 100),
        bottomNavigationBar: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
          child: NBottomNavigationBar(),
        ),
      ),
    );
  }
}

class NBottomNavigationBar extends StatelessWidget {
  const NBottomNavigationBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromRGBO(19, 21, 41, 100),
        selectedItemColor: Color.fromRGBO(229, 9, 20, 100),
        unselectedItemColor: Color.fromRGBO(105, 107, 129, 100),
        currentIndex: 0,
        iconSize: 20,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text("Search"),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Netchicks.heart,
              size: 18,
            ),
            title: Text("Favourite"),
            activeIcon: Icon(Netchicks.heart_filled),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            title: Text("Profile"),
            activeIcon: Icon(Icons.person),
          ),
        ],
        onTap: (index) {
          debugPrint(index.toString());
        },
      ),
    );
  }
}
