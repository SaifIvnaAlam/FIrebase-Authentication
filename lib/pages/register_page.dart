import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../components/my_button.dart';
import '../components/my_textfield.dart';
import '../components/square_tile.dart';

class RegPage extends StatefulWidget {
  RegPage({super.key});

  @override
  State<RegPage> createState() => _RegPageState();
}

class _RegPageState extends State<RegPage> {
  final userNameController = TextEditingController();

  final passwordController = TextEditingController();

  void signUserUp() async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: userNameController.text,
        password: passwordController.text,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  const Icon(
                    Icons.person,
                    size: 100,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Please register with e-mail and password",
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  MyTextField(
                    abcureText: false,
                    controller: userNameController,
                    hintText: "E-mail",
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  MyTextField(
                    abcureText: true,
                    controller: passwordController,
                    hintText: "Password",
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  MyButton(
                    onTap: signUserUp,
                    buttonText: "Sign up",
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 1.5,
                            color: Colors.grey[400],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            "Or continue with",
                            style: TextStyle(color: Colors.grey[700]),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 1.5,
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 19,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SqureTile(
                        icon: FontAwesomeIcons.google,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SqureTile(
                        icon: FontAwesomeIcons.apple,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 19,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
