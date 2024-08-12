import 'package:chat_app/componnets/my_button.dart';
import 'package:chat_app/componnets/my_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({
    super.key,
    required this.onTap,
    });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //textcontrollers
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

 //sign in user
 void signIn(){

 }
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
            
                //welcome back message
                const Text(
                  "Wlecome Back",
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
            
              const SizedBox(height: 25),
                //sign in button
            
               MyButton(onTap: (){}, text:"Sign In"),

                //not a member register

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Not Member! Register'),
                  const SizedBox(width: 4),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: const Text(
                      "Register now",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
