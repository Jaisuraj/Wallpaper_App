import 'package:Wallpapers/Login.dart';
import 'package:Wallpapers/SignUp.dart';
import 'package:Wallpapers/Start.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:splashscreen/splashscreen.dart';
import 'HomePage.dart';
import 'package:firebase_core/firebase_core.dart';

import 'HomePage.dart';




void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();


  runApp(MyApp());
}

class MyApp extends StatelessWidget  {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        primaryColor: Colors.orange
      ),
      debugShowCheckedModeBanner: false,
        home: SplashScreen(
            seconds: 3,
            navigateAfterSeconds:HomePage(),


            image: new Image.asset('images/splash1.jpg'),
            photoSize: 100.0,
            backgroundColor: Colors.white,
            styleTextUnderTheLoader: new TextStyle(),
            loaderColor: Colors.orange
        ),
      routes: <String,WidgetBuilder>{

      "Login" : (BuildContext context)=>Login(),
      "SignUp":(BuildContext context)=>SignUp(),
      "start":(BuildContext context)=>Start(),
    },


      
    );
  }

}



