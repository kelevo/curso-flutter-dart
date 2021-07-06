import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Alert Page'),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text('Mostrar alerta'),
            style: ElevatedButton.styleFrom(
                primary: Colors.pinkAccent, shape: StadiumBorder()),
            onPressed: () {
              _mostrarAlert(context);
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.west_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ));
  }

  void _mostrarAlert(BuildContext context) {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
            title: Text('Titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Este es el contenido de la caja de la alerta'),
                FlutterLogo(
                  size: 100.0,
                ),
              ],
            ),
            actions: <Widget>[
              ElevatedButton(
                child: Text('Cancelar'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.red, shape: StadiumBorder()),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              ElevatedButton(
                child: Text('Ok'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.green, shape: StadiumBorder()),
                onPressed: () {},
              )
            ],
          );
        });
  }
}