import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../commons/common.dart';
import '../../../constants/constants.dart';
import '../../../theme/pallet.dart';
import '../widget/auth_field.dart';
import 'login_view.dart';

class SignUpView extends StatefulWidget {
    static route() => MaterialPageRoute(builder: (context) => const SignUpView());

  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
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
                text: "Already have an Account?",
                style: const TextStyle(fontSize: 16),
                children: [
                  TextSpan(
                      text: ' Log in',
                      style: const TextStyle(
                          color: Pallete.blueColor, fontSize: 16),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            LoginView.route(),
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
