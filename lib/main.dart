import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'button.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Container(
          color: Colors.blueGrey,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                "assets/img/logo.png",
                scale: 2,
              ),
              ButtonWidget(
                color: Colors.red,
                text: "Login com google",
                iconData: FontAwesomeIcons.google,
              ),
              ButtonWidget(
                color: Colors.green,
                text: "Login com Whatsapp",
                iconData: FontAwesomeIcons.whatsapp,
              ),
              ButtonWidget(
                color: Colors.blue,
                text: "Login com Facebook",
                iconData: FontAwesomeIcons.facebook,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    child: Icon(
                      FontAwesomeIcons.behance,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    child: Icon(
                      FontAwesomeIcons.napster,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    child: Icon(
                      FontAwesomeIcons.medium,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    child: Icon(
                      FontAwesomeIcons.flickr,
                      color: Colors.white,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
