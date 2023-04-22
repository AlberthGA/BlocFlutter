import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: const Text("Bloc Mooviles"),
        centerTitle: true,
      ),
      body:Image.network("https://indexdesarrollo.com/wp-content/uploads/2019/10/mejores-plataformas-hibridas-apps-moviles.jpg"),
      ); 
  }
}