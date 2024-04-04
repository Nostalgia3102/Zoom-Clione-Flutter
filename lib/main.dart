import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:zoom_clone/screens/home_screen.dart';
import 'package:zoom_clone/screens/login_screen.dart';
import 'package:zoom_clone/utils/colors.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(apiKey: 'key', appId: 'id', messagingSenderId: 'sendid', projectId: 'myApp')
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zoom Clone App',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
        ),
      routes: {
        '/login' : (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen()
      },
      home: const LoginScreen(),
    );
  }
}
