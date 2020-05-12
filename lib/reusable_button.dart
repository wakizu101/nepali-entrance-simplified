import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math';
import 'package:google_fonts/google_fonts.dart';
import 'webpage.dart';

class ReusableButton extends StatelessWidget {
  ReusableButton({this.image,  this.url, this.text});
  final String text;
  final String image;
  final String url;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('tap');
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => WebPage(title: text, url: url),
            ));
      },
      child: Container(
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
            color: Color((Random().nextDouble() * 0xFFFFFF).toInt())
                .withOpacity(0.8),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.black)),
        child: Row(
          children: <Widget>[
            SizedBox(
              width:30
            ),
            Image.asset(
              'images/$image',width: 30, height: 30,
            ),
            SizedBox(
              width: 18,
            ),
            Text(
              text,
              style: GoogleFonts.indieFlower(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                  fontSize: 30),
            ),
          ],
        ),
      ),
    );
  }
}

class DrawerCustom extends StatelessWidget {
  DrawerCustom({this.image, @required this.text, this.url});
  final IconData image;
  final String text;
  final String url;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color:
            Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        leading: FaIcon(image),
        title: Text(text, style: GoogleFonts.indieFlower(fontSize: 25, color: Colors.white)),
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => WebPage(
                  title: text,
                  url:url,
                ),
              ));
        },

      ),
    );
  }
}

class DrawerCustom1 extends StatelessWidget {
  DrawerCustom1({this.image, @required this.text, this.onpressed});
  final IconData image;
  final String text;
  final Function onpressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color:
        Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: ListTile(
        leading: FaIcon(image),
        title: Text(text, style: GoogleFonts.indieFlower(fontSize: 25, color: Colors.white)),
        onTap: onpressed,

      ),
    );
  }
}
