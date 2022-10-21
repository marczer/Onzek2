
import'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:onzek/fonction/bouttons/boutton1.dart';
import 'package:onzek/fonction/bouttons/boutton2.dart';

import 'parametre.dart';

class MonCompte extends StatefulWidget {
  const MonCompte({super.key});

  @override
  State<MonCompte> createState() => _MonCompteState();
}

class _MonCompteState extends State<MonCompte> {
  bool cachPassword = true;

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
        backgroundColor: Color(0xff41CDFB),
        leading: IconButton(onPressed: () { 
        }, icon:Icon(Icons.arrow_back)),
        title: Text('Mon Compte', textAlign: TextAlign.start,),
), 
  body: Container(
    color: Color(0xfff9f9f9),
    padding: EdgeInsets.only(left: 15, top: 20,right: 15),
    child: GestureDetector(
      onTap: () {
        
      },
      child: ListView(
        children: [
          Center(
            child: Stack(
              children: [
                Container(
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                    border: Border.all(width: 4, color: Colors.white),
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 2,
                        blurRadius: 10,
                        color: Colors.black.withOpacity(0.1)


                      )
                    ],
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/images/lezer.jpeg"),
                      fit: BoxFit.cover
                      ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 4,
                        color: Colors.white,
                      ),
                      color: Color(0xff41CDFB),
                    ),
                    child: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                  ),
          
                ],
            ),
          ),
           SizedBox(height: 30),
           ModifTextField('le nom', 'marczer', false),
           ModifTextField('numero', '0545186961', false),
           ModifTextField('mot de passe', 'prince2', true),
           SizedBox(height: 30),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              boutton1(title: 'Annuler', onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => para(),));},),
              boutton2(title: 'enregistrer', onPressed: () {null;}),
            ],
           )
        ],
      ),
    ),
  )
    );
  }
  Widget ModifTextField 
  (
      String labelText,
      String placeholder,
      bool isPassword,
  )
  {
    return Padding(
      padding: EdgeInsets.only(bottom: 30),
       child: TextField(
        obscureText: isPassword ? cachPassword : false,
        decoration: InputDecoration(
          suffixIcon: isPassword ?
           IconButton(
            onPressed: () {
              setState(() {
                cachPassword = !cachPassword;
              });
            },
            icon: Icon(Icons.remove_red_eye, color: Colors.grey,),
            ): null,
        contentPadding: EdgeInsets.only(bottom: 5),
        labelText: labelText,
         floatingLabelBehavior: FloatingLabelBehavior.always,
         hintText: placeholder,
         hintStyle: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.grey,
         )
        ),
       ),
      );
  }

}