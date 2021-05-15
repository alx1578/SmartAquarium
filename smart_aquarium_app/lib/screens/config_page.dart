import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ConfigPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ConfigPageState();
  }
}

class ConfigPageState extends State<ConfigPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Configurações do ambiente'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Controle de Alimentação',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          title: Text(''),
                          leading: Icon(Icons.watch_later_outlined),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  child: ButtonTheme(
                    minWidth: 100,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0)),
                      onPressed: () {
                        final horaSelecionada =  _selectTime(context);
                      },
                      child: Text('Adicionar hora'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  Future<TimeOfDay> _selectTime(BuildContext context) {
    final now = DateTime.now();
    showTimePicker(context: context, initialTime: TimeOfDay(hour: now.hour, minute: now.minute));
  }
}
