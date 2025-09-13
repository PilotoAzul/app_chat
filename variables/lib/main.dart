import 'package:variables/config/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:variables/presentation/screen/chat_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Chat Si - No App",
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selecColor: 5).theme(),// estoy instanciando una propiedad de otra clase 
      home: ChatScreen(),
    );
  }
}
