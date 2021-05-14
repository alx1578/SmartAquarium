import 'package:flutter/material.dart';

class EditorTelaLogin extends StatelessWidget {
  final TextEditingController controlador;
  final String rotulo;
  final String dica;
  final IconData icone;
  final TextField formato;

  const EditorTelaLogin(
      {this.controlador, this.rotulo, this.dica, this.icone, this.formato});

  @override
  Widget build(BuildContext context) {
    if (rotulo == 'Senha') {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          obscureText: true,
          controller: controlador,
          style: TextStyle(fontSize: 16.0),
          decoration: InputDecoration(
            labelText: rotulo,
            hintText: dica,
            icon: icone != null ? Icon(icone) : null,
          ),
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: controlador,
          style: TextStyle(fontSize: 16.0),
          decoration: InputDecoration(
            labelText: rotulo,
            hintText: dica,
            icon: icone != null ? Icon(icone) : null,
          ),
        ),
      );
    }
  }
}
