import 'package:flutter/material.dart';
import 'package:main_project/ENTREPRENEUR/formscreen/forgetpassword/forgetpage.dart';
import 'package:main_project/ENTREPRENEUR/formscreen/loginnotifi.dart';
import 'package:main_project/ENTREPRENEUR/formscreen/signup.dart';

class Entreloginpage extends StatefulWidget {
  const Entreloginpage({super.key});

  @override
  State<Entreloginpage> createState() => _LogaState();
}

class _LogaState extends State<Entreloginpage> {
  bool _obscureText = true;
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(129, 146, 204, 1),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Form(
              key: _formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 80),
                  const Center(
                    child: Text(
                      "Encanto",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  const Text("Email"),
                  const SizedBox(height: 7),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Please enter an email address';
                      }
                      if (!RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$')
                          .hasMatch(value)) {
                        return 'Invalid email format';
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hintText: ("Enter Your Email"),
                        prefixIcon: const Icon(Icons.email)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text("Password"),
                  const SizedBox(height: 7),
                  TextFormField(
                      validator: (password) {
                        // Password length should be at least 8 characters
                        if (password!.length < 4) {
                          return 'Password must be at least 4 characters long.';
                        }

                        // // Password should contain at least one uppercase letter
                        // if (!password.contains(RegExp(r'[A-Z]'))) {
                        //   return 'Password must contain at least one uppercase letter.';
                        // }

                        // // Password should contain at least one lowercase letter
                        // if (!password.contains(RegExp(r'[a-z]'))) {
                        //   return 'Password must contain at least one lowercase letter.';
                        // }

                        // Password should contain at least one digit
                        if (!password.contains(RegExp(r'[0-9]'))) {
                          return 'Password must contain at least one digit.';
                        }

                        // Password should contain at least one special character
                        // if (!password
                        //     .contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
                        //   return 'Password must contain at least one special character.';
                        // }

                        // Password is valid
                        return null;
                      },
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: ("Enter Your Password"),
                          prefixIcon: const Icon(Icons.lock),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _obscureText = !_obscureText;
                              });
                            },
                            child: Icon(
                              _obscureText
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                            ),
                          ))),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          style: ButtonStyle(
                              foregroundColor:
                                  MaterialStateProperty.all(Colors.black)),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Entreforgetpage(),
                                ));
                          },
                          child: const Text("Forgot Password?"))
                    ],
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  Center(
                    child: ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadiusDirectional.circular(10))),
                            minimumSize:
                                MaterialStateProperty.all(const Size(280, 50)),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.black),
                            backgroundColor: MaterialStateProperty.all(
                                const Color.fromARGB(255, 230, 27, 75))),
                        onPressed: () {
                          if (_formkey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 90, vertical: 60),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 5),
                              content: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.verified_user_outlined,
                                      color: Colors.white),
                                  SizedBox(width: 10),
                                  Text(
                                    'Login Successfully',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              backgroundColor: Colors.green,
                              behavior: SnackBarBehavior.floating,
                              elevation: 4.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              duration: const Duration(seconds: 3),
                            ));
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Entreloginnotification()));
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 90, vertical: 60),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 5),
                              content: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.error, color: Colors.white),
                                  SizedBox(width: 10),
                                  Text(
                                    'Invalid Credential',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                              backgroundColor: Colors.red,
                              behavior: SnackBarBehavior.floating,
                              elevation: 4.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                              duration: const Duration(seconds: 3),
                            ));
                          }
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 1,
                          color: Colors.black,
                        ),
                      ),
                      const Text(" Or Login With "),
                      Expanded(
                        child: Container(
                          height: 1,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 60,

                        width: 60,
                        // color: Colors.amber,
                        child: const Image(
                            image: AssetImage("images/facebook.png")),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Container(
                        height: 40,

                        width: 40,

                        // color: Colors.amber,
                        child:
                            const Image(image: AssetImage("images/google.png")),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account? "),
                      InkWell(
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: ((context) => Entresignup()))),
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.pink),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
