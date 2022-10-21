import 'package:flutter/material.dart';
import '../../fonction/personcompte.dart';
import 'inbox.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required String title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Container(
          padding: EdgeInsets.all(10),
          color: Color(0xfff9f9f9),
          child: Column(
            children: [
              avata(
                  image: "assets/images/lezer.jpeg",
                  nom: 'Viera',
                  prenom: 'Marc Oula'),
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
                    children: [
                      Column(
                        children: [
                          SizedBox(
                            height: 60,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                connectavata(
                                  image: 'assets/images/lezer.jpeg',
                                ),
                                connectavata(
                                  image: 'assets/images/Format.png',
                                ),
                                connectavata(
                                  image: 'assets/images/ecole.png',
                                ),
                                connectavata(
                                  image: 'assets/images/image1.png',
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
                          const personcompte(
                              image: "assets/images/lezer.jpeg",
                              username: 'Oula Marc Viera',
                              lastmes: 'Hello Words',
                              year: "10.00 PM",
                              numbermes: '1'),
                          const personcompte(
                              image: "assets/images/lezer.jpeg",
                              username: 'Oula Marc Viera',
                              lastmes: 'Hello Words',
                              year: "10.00 PM",
                              numbermes: '1'),
                          const personcompte(
                              image: "assets/images/lezer.jpeg",
                              username: 'Oula Marc Viera',
                              lastmes: 'Hello Words',
                              year: "10.00 PM",
                              numbermes: '1'),
                          const personcompte(
                              image: "assets/images/lezer.jpeg",
                              username: 'Oula Marc Viera',
                              lastmes: 'Hello Words',
                              year: "10.00 PM",
                              numbermes: '1'),
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
                                  image: 'assets/images/lezer.jpeg',
                                ),
                                connectavata(
                                  image: 'assets/images/Format.png',
                                ),
                                connectavata(
                                  image: 'assets/images/ecole.png',
                                ),
                                connectavata(
                                  image: 'assets/images/image1.png',
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
}
