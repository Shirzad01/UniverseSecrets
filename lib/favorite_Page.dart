import 'package:flutter/material.dart';

import 'Animations.dart';

class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: const Stack(
          children: [
            Positioned.fill(child: DrawerAnimation()),
        Center(child: Text("Favorite",style: TextStyle(fontSize: 20),),)
      ]),
    );
  }
}
