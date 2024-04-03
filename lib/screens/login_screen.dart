import 'package:flutter/material.dart';
import 'package:zoom_clone/widgets/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Zoom Clone"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Start or Join a Meeting", style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24
          ),),
          const SizedBox(height: 50,),
          Image.asset("assets/images/onboarding.jpg"),
          const SizedBox(height: 50,),
          CustomButton(text: "Google Sign In", onPressed: (){})
        ],
      ),
    );
  }
}
