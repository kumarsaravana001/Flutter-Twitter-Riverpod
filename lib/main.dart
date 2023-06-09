import 'package:flutter/material.dart';
import 'package:flutter_twitter_clone/theme/theme.dart';

import 'features/auth/view/login_view.dart';
import 'features/auth/view/signup_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.theme,
      home: const SignUpView(),
    );
  }
}


//Structure
//UI <-> Controller(Model Conversion) <-> Repository(Backend (Appwrite call)) 
//UI ->! Repository , Repository ->! UI
