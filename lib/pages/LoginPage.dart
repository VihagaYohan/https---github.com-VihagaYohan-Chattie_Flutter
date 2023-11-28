import 'package:flutter/material.dart';

// components
import 'package:chattie_flutter/components/UI_Text_Form_Field.dart';
import 'package:chattie_flutter/components/UI_Button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              const Icon(
                Icons.message,
                size: 80,
              ),
              const SizedBox(height: 30),
              // welcome back message
              const Text("Welcome back! Please login to your account",
                  style: TextStyle(fontSize: 16)),

              const SizedBox(
                height: 30,
              ),
              // email text field
              UITextFormField(
                  hintText: "Email",
                  isObsecureText: false,
                  controller: emailController),

              const SizedBox(height: 30),

              UITextFormField(
                  hintText: "Password",
                  isObsecureText: true,
                  controller: passwordController),

              const SizedBox(
                height: 30,
              ),
              // sign in button
              UIButton(title: "Sign In", onTap: () {}),

              const SizedBox(height: 30),

              // not a member
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Not a member"),
                  Text("Register",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ))
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
