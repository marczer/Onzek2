import 'package:flutter/material.dart';
import 'package:onzek/screens/registration/login.dart';
import 'package:onzek/fonction/bouttons/largebutton.dart';
import 'package:onzek/fonction/textformfield.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  bool check = false;

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    var largeur = queryData.size.width;
    var hauteur = queryData.size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.grey.shade200),
              padding: EdgeInsets.only(
                  bottom: 10,
                  left: largeur * 0.04,
                  right: largeur * 0.04,
                  top: hauteur * 0.12),
              child: Column(
                children: [
                  const Center(
                    child: Text(
                      "Signup",
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xff333333),
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: hauteur * 0.05,
                  ),
                  Container(
                    height: hauteur * 0.06,
                    child: textfield(
                      label: "Email*",
                    ),
                  ),
                  SizedBox(
                    height: hauteur * 0.025,
                  ),
                  Container(
                    height: hauteur * 0.06,
                    child: textfield(
                      label: "Number*",
                    ),
                  ),
                  SizedBox(
                    height: hauteur * 0.025,
                  ),
                  Container(
                    height: hauteur * 0.06,
                    child: textfield(
                      label: "Create password",
                    ),
                  ),
                  SizedBox(
                    height: hauteur * 0.025,
                  ),
                  Container(
                    height: hauteur * 0.06,
                    child: textfield(
                      label: "Confirm password",
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Checkbox(
                          activeColor: const Color.fromARGB(255, 68, 218, 255),
                          value: check,
                          onChanged: (bool? value) {
                            setState(() {
                              check = value!;
                            });
                          },
                        ),
                        const Text('Remember me'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: hauteur * 0.01,
                  ),
                  largebutton(text: 'LOGIN'),
                  SizedBox(
                    height: hauteur * 0.015,
                  ),
                  const Text(
                    "OR continue with",
                    style: TextStyle(fontSize: 16, color: Colors.black45),
                  ),
                  SizedBox(
                    height: hauteur * 0.005,
                  ),
                  transbutton(
                      image: 'assets/images/google.png', text: 'Google'),
                  transbutton(
                      image: 'assets/images/facebook.png', text: 'Facebook'),
                  SizedBox(
                    height: hauteur * 0.12,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have Account?",
                        style: TextStyle(fontSize: 15, color: Colors.black45),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MyHomePage(),
                                ));
                          },
                          child: const Text("Login"))
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
