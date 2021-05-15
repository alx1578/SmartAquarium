import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_aquarium_app/screens/add_config_page.dart';
import 'package:smart_aquarium_app/screens/config_page.dart';
import 'package:smart_aquarium_app/screens/principal_page.dart';

class ControlPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ControlState();
  }
}

class ControlState extends State<ControlPage> {
  PageController _pageController;
  int _currentindex = 0;
  List<Widget> _screens = <Widget>[PrincipalPage(),ConfigPage(),AdicaoPage()];


  void _itemTapped(int index) {
    setState(() {
      _currentindex = index;
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens.elementAt(_currentindex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blue,
        iconSize: 24,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.house,
              color: Colors.black,
            ),
            label: 'Home',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.vpn_lock,
              color: Colors.black,
            ),
            label: 'Configurações',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.description,
              color: Colors.black,
            ),
            label: 'Cadastro de peixes',
            backgroundColor: Colors.blue,
          ),
        ],
        currentIndex: _currentindex,
        onTap: _itemTapped,
      ),
    );
  }



}
