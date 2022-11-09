import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:onzek/fonction/bouttons/Customimage.dart';
import 'package:onzek/screens/userpage/Settings/parametre.dart';
import 'package:onzek/screens/userpage/chatcontroller.dart';
import 'package:onzek/screens/userpage/userround.dart';

import 'package:onzek/screens/userpage/utilisateur.dart';
import 'package:onzek/service/usermodel.dart';
import '../../fonction/personcompte.dart';
import '../../service/firebasehelper.dart';
import 'inbox.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required String title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

enum MenuItem {
  item1,
  item2,
}

class _MyHomePageState extends State<MyHomePage> {
  final User? user = FirebaseHelper().auth.currentUser;

  @override
  late MyUser? me;
  void initState() {
    super.initState();
    _getUser();
  }

  Widget build(BuildContext context) {
    var largeur = MediaQuery.of(context).size.width;
    var hauteur = MediaQuery.of(context).size.height;
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Container(
          margin: EdgeInsets.fromLTRB(0, 45, 0, 0),
          padding: EdgeInsets.all(10),
          color: Color(0xfff9f9f9),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    child: CustomImage(
                      color: Color(0XFFEA5863),
                      imageUrl: me!.imageUrl,
                      initiales: me!.initiales,
                      radius: 20,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(me!.nom),
                      Text(me!.prenoms),
                    ],
                  ),
                  SizedBox(
                    width: largeur * 0.4,
                  ),
                  Icon(
                    Icons.search,
                    size: 25.0,
                  ),
                  PopupMenuButton(
                    onSelected: (value) {
                      if (value == MenuItem.item1) {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => para(),
                            ));
                      }
                    },
                    icon: Icon(Icons.menu),
                    itemBuilder: (BuildContext context) => <PopupMenuEntry>[
                      const PopupMenuItem(
                        value: MenuItem.item1,
                        child: Text('Parametre'),
                      ),
                    ],
                  ),
                ],
              ),
              // Container(
              //   height: 10,
              // ),
              Container(
                constraints: BoxConstraints.expand(height: 50),
                child: const TabBar(
                    labelColor: Color(0xff41CDFB),
                    indicatorColor: Color(0xff41CDFB),
                    indicatorWeight: 3,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(
                        child: Text(
                          'Description',
                          maxLines: 1,
                        ),
                      ),
                      Tab(
                        child: Text(
                          'Appel Audio',
                          maxLines: 1,
                        ),
                      ),
                      // Colors.black,
                    ]),
              ),

              Expanded(
                  child: Container(
                child: TabBarView(children: [
                  ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 60,
                            child: Container(child: contact2()),
                          ),
                          Container(child: contact()),
                        ],
                      ),
                    ],
                  ),
                  ListView(
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 60,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                connectavata(
                                  image: 'assets/images/Format.png',
                                ),
                                connectavata(
                                  image: 'assets/images/ecole.png',
                                ),
                                connectavata(
                                  image: 'assets/images/image2.jpg',
                                ),
                                connectavata(
                                  image: 'assets/images/lezer.jpeg',
                                ),
                              ],
                            ),
                          ),
                          Card(
                            color: Color(0xffe6f9ff),
                            // margin: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                            child: ListTile(
                              leading: CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage('assets/images/Format.png'),
                              ),
                              title: Text('zer oula'),
                              subtitle: Text(
                                'appel manquer',
                                style: TextStyle(color: Colors.red),
                              ),
                              trailing: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Icon(Icons.phone_missed, color: Colors.red),
                                  Container(
                                      height: 15,
                                      width: 15,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        color: Color(0xff41CDFB),
                                      ),
                                      child: Center(
                                        child: Text('1',
                                            style:
                                                TextStyle(color: Colors.black)),
                                      )),
                                ],
                              ),
                            ),
                          ),
                          Card(
                            color: Color(0xffe6f9ff),
                            // margin: EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                            child: ListTile(
                              leading: CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage('assets/images/Format.png'),
                              ),
                              title: Text('zer oula'),
                              subtitle: Text(
                                'appel recu',
                                style: TextStyle(color: Colors.blue),
                              ),
                              trailing: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Icon(Icons.phone, color: Colors.blue),
                                  Container(
                                      height: 15,
                                      width: 15,
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        color: Color(0xff41CDFB),
                                      ),
                                      child: Center(
                                        child: Text('1',
                                            style:
                                                TextStyle(color: Colors.black)),
                                      )),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ]),
              )),
            ],
          ),
        ),
      ),
      floatingActionButton: const FloatingActionButton(
        onPressed: null,
        child: Icon(Icons.message),
        backgroundColor: Color(0xff41CDFB),
      ),
    );
  }

  _getUser() {
    FirebaseHelper().getUser(user!.uid).then((me) {
      setState(() {
        this.me = me;
        print("me-----$me");
      });
    });
  }
}
