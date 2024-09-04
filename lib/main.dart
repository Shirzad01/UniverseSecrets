import 'package:flutter/material.dart';
import 'package:untitled/Splash_Screen.dart';
import 'Animations.dart';

void main()  {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white)
        ),
      scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
          color: Colors.deepPurple,
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
          titleTextStyle: TextStyle(color: Colors.white,fontSize: 22)
        ),
        useMaterial3: true,
      ),
      builder:  (context, child) {
        return Stack(
         children: [
           const Positioned.fill(child: DrawerAnimation()),
           const DrawerAnimation(),
           child ?? const SizedBox(),
         ],
        );
      },
      home: const SplashScreen(),
    );
  }
}
