import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/main_screen.dart';
import 'utils/const.dart';

void main() async{
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_){
    runApp(MyApp());
  });
}
 
 class MyApp extends StatefulWidget {
   MyApp({Key key}) : super(key: key);
 
   _MyAppState createState() => _MyAppState();
 }
 
 class _MyAppState extends State<MyApp> {
   @override
   void initState() {
 
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Constants.lightPrimary,
      statusBarIconBrightness: Brightness.dark
    ));
  }
   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       debugShowCheckedModeBanner: false,
       title: Constants.appName,
       theme: Constants.lightTheme,
       home: MainScreen(),
     );
   }
 }