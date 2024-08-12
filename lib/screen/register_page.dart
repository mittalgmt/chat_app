import 'package:chat_app/componnets/my_button.dart';
import 'package:chat_app/componnets/my_text_field.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;

  const RegisterPage({
    super.key,
    required this.onTap,
    });

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  void signUp() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),
                //logo
                Icon(
                  Icons.message,
                  size: 80,
                ),
                const SizedBox(height: 50),

                //CA message
                const Text(
                  "Create New Account!",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                const SizedBox(height: 25),

                // email text field
                MyTextField(
                  textcontroller: _emailController,
                  hintText: "Email",
                  obscureText: false,
                ),

                const SizedBox(height: 10),

                //password textfield
                MyTextField(
                  textcontroller: _passwordController,
                  hintText: "Password",
                  obscureText: true,
                ),

                //confirem password
                const SizedBox(height: 10),

                //password textfield
                MyTextField(
                  textcontroller: _confirmPasswordController,
                  hintText: "confiremPassword",
                  obscureText: true,
                ),

                const SizedBox(height: 25),
                //sign in button

                MyButton(onTap: signUp, text: "Sign Up"),

                //not a member register

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Alredy Member! Sign In'),
                    const SizedBox(width: 4),
                    Text(
                      "Login now",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
