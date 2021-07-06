import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 100.0;
  bool _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Sliders'),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            children: <Widget>[
              _crerSlider(),
              _checkBox(),
              _crearSwitch(),
              Expanded(
                child: _crearImagen(),
              ),
            ],
          ),
        ));
  }

  _crerSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamanio de la imagen',
      // divisions: 20,
      value: _valorSlider,
      min: 10.0,
      max: 400.0,
      onChanged: (_bloquearCheck) ? null : (valor) {
        setState(() {
          _valorSlider = valor;
        });
      },
    );
  }

  Widget _checkBox() {
    // return Checkbox(
    //   value: _bloquearCheck,
    //   onChanged: (valor) {
    //     setState(() {
    //       _bloquearCheck = valor!;
    //     });
    //   },
    // );

    return CheckboxListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearCheck,
      onChanged: (valor) {
        setState(() {
          _bloquearCheck = valor!;
        });
      },
    );
  }

  _crearSwitch() {
    return SwitchListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearCheck,
      onChanged: (valor) {
        setState(() {
          _bloquearCheck = valor;
        });
      },
    );
  }

  _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://i.pinimg.com/originals/13/85/6d/13856de7abb53d41a4bb7f185814b7bf.png'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }
}
