import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'reusable_button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.black,
          drawer: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Colors
                  .black, //This will change the drawer background to blue.
              //other styles
            ),
            child: Drawer(
              child: Column(
                children: <Widget>[
                  DrawerHeader(
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [Colors.white, Colors.deepOrange])),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Center(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50.0),
                              child: Image.asset(
                                'images/nes2.jpg',
                                height: 100,
                                width: 100,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Center(
                              child: Text('Nepali Entrance Simplified',
                                  style: GoogleFonts.baloo(
                                      fontSize: 15, color: Colors.tealAccent)))
                        ],
                      )),
                  SizedBox(
                    height: 18,
                  ),
                  DrawerCustom(
                    text: 'Free Books',
                    image: FontAwesomeIcons.book,
                    url:
                        "http://lib.moecdc.gov.np/catalog/opac_css/index.php?lvl=cmspage&pageid=6&id_rubrique=105",
                  ),
                  DrawerCustom(
                    text: 'Youtube',
                    image: FontAwesomeIcons.youtube,
                    url:
                        "https://www.youtube.com/channel/UCu9GoUJmBEwMwp1toA2yFKg/videos",
                  ),
                  DrawerCustom(
                    text: 'FaceBook',
                    image: FontAwesomeIcons.facebook,
                    url:
                        "https://m.facebook.com/nepalientrance/posts/?ref=page_internal&mt_nav=0",
                  ),
                  Divider(color: Colors.white
                    , ),
                  DrawerCustom(text: 'Ask Us',image: FontAwesomeIcons.question,
                  url: "https://nepalientrance.blogspot.com/p/ask-question.html",
                  ),
                  DrawerCustom(text: 'About Us',image: FontAwesomeIcons.users, url: "https://nepalientrance.blogspot.com/p/about-us.html",)
                ],
              ),
            ),
          ),


            body: ListView(
            children: <Widget>[
              ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child:
                      Image.asset('images/nes.jpg', fit: BoxFit.cover)),
              SizedBox(
                height: 18,
              ),
              ReusableButton(
                  text: 'Khullakitab',
                  image: 'index.png',
                  url: "http://www.khullakitab.com/"),
              ReusableButton(
                text: 'Kullabs',
                image: 'index2.png',
                url: "https://www.kullabs.com/",
              ),
              ReusableButton(
                text: 'Midas',
                url: "https://www.midas.com.np/login",
                image: 'index3.png',
              ),
              ReusableButton(
                text: 'EduSanjal',
                url: "https://www.edusanjal.com/",
                image: 'index4.png',
              ),
              ReusableButton(
                text: 'Khan Academy',
                url: "https://www.khanacademy.org/login",
                image: 'index5.png',
              ),
              ReusableButton(
                url: "http://www.ioenotes.edu.np/",
                image: 'index8.png',
                text: 'IOEnotes',
              ),
              ReusableButton(
                text: 'MBBStips',
                image: 'index10.png',
                url: "https://www.mbbstips.com/",
              ),
              ReusableButton(
                text: 'MeroSpark',
                image: 'index1.png',
                url: "https://www.merospark.com/",
              ),
              ReusableButton(
                text: 'Help For Ag',
                url: "https://helpforagmain.blogspot.com/p/home-page.html",
                image: 'index6.png',
              ),
              ReusableButton(
                text: 'Colleges Nepal',
                url: "http://www.collegesnepal.com/",
                image: 'index7.png',
              ),
            ],
          ),
        ));
  }
}



