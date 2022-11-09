import 'package:flutter/material.dart';

import '../Acceuil.dart';
import 'myprofilpage.dart';

class para extends StatefulWidget {
  const para({
    super.key,
  });

  @override
  State<para> createState() => _paraState();
}

final ButtonStyle style = ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
    textStyle: const TextStyle(fontSize: 20),
    backgroundColor: Color(0xff41CDFB));

class _paraState extends State<para> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color(0xfff9f9f9),
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              SizedBox(
                height: 50,
              ),
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyHomePage(
                            title: '',
                          ),
                        ));
                  },
                  icon: Icon(Icons.arrow_back, color: Color(0xff41CDFB))),
              SizedBox(width: 130),
              Text(
                'parametre',
                textAlign: TextAlign.center,
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: Card(
              color: Color(0xffe6f9ff),
              // margin: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
              child: ListTile(
                leading: Text('Mon profil'),
                trailing: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MonCompte(),
                          ));
                    },
                    icon: Icon(Icons.arrow_forward, color: Color(0xff41CDFB))),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: Card(
              color: Color(0xffe6f9ff),
              // margin: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
              child: ListTile(
                leading: Text('longuage'),
                trailing: Icon(Icons.arrow_forward, color: Color(0xff41CDFB)),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: Card(
              color: Color(0xffe6f9ff),
              // margin: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
              child: ListTile(
                leading: Text('notification'),
                trailing: Icon(Icons.arrow_forward, color: Color(0xff41CDFB)),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
            child: Card(
              color: Color(0xffe6f9ff),
              // margin: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
              child: ListTile(
                leading: Text('Dark theme'),
                trailing: Icon(Icons.arrow_forward, color: Color(0xff41CDFB)),
              ),
            ),
          ),
          SizedBox(
            height: 200,
          ),
          Container(
            width: 150,
            height: 50,
            child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF41cdfb),
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(9))),
                child: Text(
                  "valider",
                  style: const TextStyle(fontSize: 20),
                )),
          )
        ],
      ),
    ));
  }
}
