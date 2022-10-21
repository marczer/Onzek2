import 'package:flutter/material.dart';

import '../../screens/userpage/PagePrincipal.dart';

class largebutton extends StatelessWidget {
  final String text;

  largebutton({required this.text});

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    var largeur = queryData.size.width;
    var hauteur = queryData.size.height;
    return Container(
      height: hauteur * 0.06,
      width: double.infinity,
      child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage(
                    title: '',
                  ),
                ));
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Color(0xFF41cdfb),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          child: Text(text)),
    );
  }
}

class transbutton extends StatelessWidget {
  final String image;
  final String text;

  transbutton({required this.image, required this.text});

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData;
    queryData = MediaQuery.of(context);
    var largeur = queryData.size.width;
    var hauteur = queryData.size.height;
    return Container(
      width: double.infinity,
      height: hauteur * 0.06,
      child: OutlinedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.grey.shade100,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        onPressed: () {},
        child: Row(
          children: [
            Image(
              height: 18,
              image: AssetImage(
                image,
              ),
            ),
            Container(
              width: largeur * 0.75,
              // margin: EdgeInsets.only(left: 100),
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.black45),
              ),
            )
          ],
        ),
      ),
    );
  }
}
