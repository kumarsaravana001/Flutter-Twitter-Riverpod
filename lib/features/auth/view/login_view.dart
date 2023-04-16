import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_twitter_clone/theme/theme.dart';

import '../../../commons/common.dart';
import '../../../constants/constants.dart';
import '../widget/auth_field.dart';
import 'signup_view.dart';

class LoginView extends StatefulWidget {
  static route() => MaterialPageRoute(builder: (context) => const LoginView());
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final appbar = UIConstants.appBar();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar,
      body: Center(
        child: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            children: [
              AuthField(
                controller: emailController,
                hinttext: 'Email',
              ),
              const SizedBox(height: 20),
              AuthField(
                controller: passwordController,
                hinttext: 'Password',
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.topRight,
                child: RoundedSmallButton(
                  lable: 'Done',
                  onTap: () {},
                ),
              ),
              const SizedBox(height: 20),
              RichText(
                  text: TextSpan(
                text: "Don't have an Account?",
                style: const TextStyle(fontSize: 16),
                children: [
                  TextSpan(
                      text: ' Sign up',
                      style: const TextStyle(
                          color: Pallete.blueColor, fontSize: 16),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            SignUpView.route(),
                          );
                        }),
                ],
              ))
            ],
          ),
        )),
      ),
    );
  }
}
