import 'package:flutter/material.dart';
import 'package:smart_aquarium_app/screens/control_page.dart';

const _login = "Login";
const _rotuloUsuario = "Usuário";
const _dicaUsuario = "Usuário";
const _rotuloSenha = "Senha";
const _dicaSenha = "Senha";

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginPageState();
  }
}

class LoginPageState extends State<LoginPage> {
  final TextEditingController usuario = TextEditingController();
  final TextEditingController _senha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.lightBlue,
                        Colors.blueAccent,
                      ]),
                  color: Colors.blue,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(80))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Spacer(),
                  Spacer(),
                  Align(
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.person,
                      size: 100,
                      color: Colors.white,
                    ),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: const EdgeInsets.only(right: 50, bottom: 32),
                      child: Text(
                        _login,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: <Widget>[
                    Container(
                      width: 300,
                      height: 45,
                      padding: EdgeInsets.only(top: 8, left: 16, right: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 20,
                          )
                        ],
                      ),
                      child: TextField(
                        controller: usuario,
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.person,
                            color: Colors.black,
                          ),
                          hintText: 'Usuário',
                        ),
                      ),
                    ),
                    Container(
                      width: 300,
                      height: 45,
                      margin: EdgeInsets.only(top: 32),
                      padding: EdgeInsets.only(top: 8, left: 16, right: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black,
                            blurRadius: 20,
                          )
                        ],
                      ),
                      child: TextField(
                        controller: _senha,
                        obscureText: true,
                        decoration: InputDecoration(
                          icon: Icon(
                            Icons.vpn_key,
                            color: Colors.black,
                          ),
                          hintText: 'Usuário',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 32),
                  child: ButtonTheme(
                    minWidth: 300,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      onPressed: () {
                        Login(
                          usuario.text,
                          _senha.text,
                        );
                      },
                      child: Text(_login),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  bool Login(String usuario, String senha) {
    if (usuario == 'teste' && senha == 'teste') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return ControlPage();
          },
        ),
      );
    }
  }
}
