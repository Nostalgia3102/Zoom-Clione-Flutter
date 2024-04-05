import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:zoom_clone/resources/auth_methods.dart';
import 'package:zoom_clone/screens/home_screen.dart';
import 'package:zoom_clone/screens/login_screen.dart';
import 'package:zoom_clone/utils/colors.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: 'AIzaSyCFnvADM1knkb9VqVB6s52jVoIRZF1JFMs',
        appId: '1:399362015281:android:da5c9cab954ee8f68f9510',
        messagingSenderId: '123',
        projectId: 'zoom-clone-app-cff16')
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
      home: StreamBuilder(
        stream: AuthMethods().authChanges,
        builder: (context, snapshot){
              if(snapshot.connectionState == ConnectionState.waiting){
                return const Center(
                  child : CircularProgressIndicator()
                );
              }
              if(snapshot.hasData){
                return const HomeScreen();
              }
              return const LoginScreen();
        },
      ),
    );
  }
}
