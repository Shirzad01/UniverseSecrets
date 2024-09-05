import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:untitled/splash_Screen.dart';
import 'animation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {


  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white)),
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: const AppBarTheme(
            color: Colors.deepPurple,
            iconTheme: IconThemeData(
              color: Colors.white,
            ),
            titleTextStyle: TextStyle(color: Colors.white, fontSize: 22)),
        useMaterial3: true,
      ),
      builder: (context, child) {
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
