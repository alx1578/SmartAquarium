import 'package:flutter/material.dart';

class SwitchState extends State<SwitchConstructor> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SwitchListTile(
        title: Text(widget._rotulo),
        value: widget.status,
        activeColor: Colors.green,
        onChanged: (value) {
          setState(() {
            widget.status = value;
          });
        });
  }
}

class SwitchConstructor extends StatefulWidget {
  bool status = false;
  final String _rotulo;

  SwitchConstructor(this.status,this._rotulo);

  @override
  State<StatefulWidget> createState() {
    return SwitchState();
  }
}
