import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:onzek/screens/registration/signup.dart';
import 'package:onzek/fonction/bouttons/largebutton.dart';
import 'package:onzek/fonction/textformfield.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, String? title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool check = false;
  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    var largeur = queryData.size.width;
    var hauteur = queryData.size.height;
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
        backgroundColor: Color(0xfff9f9f9),
        body: SingleChildScrollView(
          child: Expanded(
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(color: Color(0xfff9f9f9)),
                  padding: EdgeInsets.only(
                      bottom: 10,
                      left: largeur * 0.04,
                      right: largeur * 0.04,
                      top: hauteur * 0.12),
                  child: Column(
                    children: [
                      const Center(
                        child: Text(
                          "Connexion",
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
                          textvisible: false,
                        ),
                      ),
                      SizedBox(
                        height: hauteur * 0.04,
                      ),
                      Container(
                        height: hauteur * 0.06,
                        child: textfield(
                          label: "Password*",
                          textvisible: true,
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            Checkbox(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(6)),
                              checkColor: Colors.black45,
                              activeColor: Colors.transparent,
                              autofocus: true,
                              value: check,
                              onChanged: (bool? value) {
                                setState(() {
                                  check = value!;
                                });
                              },
                            ),
                            const Text(
                              'Se souvenir de moi',
                              style: TextStyle(color: Colors.black45),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: hauteur * 0.009,
                      ),
                      largebutton(text: 'CONNEXION'),
                      SizedBox(
                        height: hauteur * 0.04,
                      ),
                      Text(
                        "Ou continuer avec",
                        style: TextStyle(fontSize: 17, color: Colors.black45),
                      ),
                      SizedBox(
                        height: hauteur * 0.015,
                      ),
                      transbutton(
                          image: 'assets/images/google.png', text: 'Google'),
                      SizedBox(
                        height: hauteur * 0.03,
                      ),
                      transbutton(
                          image: 'assets/images/facebook.png',
                          text: 'Facebook'),
                      SizedBox(
                        height: hauteur * 0.19,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            "Vous n'avez pas de compte?",
                            style:
                                TextStyle(fontSize: 15, color: Colors.black45),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const signup(),
                                    ));
                              },
                              child: const Text("Creer"))
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
