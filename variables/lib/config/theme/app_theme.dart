import 'package:flutter/material.dart';

const List<Color> _colorTheme = [// lista de colores es privdo y se utiliza dentro de este archivo
  Colors.blue,
  Colors.red,
  Colors.green,
  Colors.purple,
  Colors.orange,
  Colors.pink,
  Colors.teal,
  Colors.cyan,
  Colors.amber,
  Colors.indigo,
];

class AppTheme {

  final int selecColor;
  AppTheme({this.selecColor = 0})// valor por defecto y se inicializa en 0
   : assert(selecColor >= 0 && selecColor <= _colorTheme.length -1,
    'EL valor de selecColor debe estar entre 0 y ${_colorTheme.length -1}');

  ThemeData theme(){
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorTheme[selecColor],
    );
  }
}