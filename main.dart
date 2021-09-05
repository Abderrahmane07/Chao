import 'package:flutter/material.dart';
import 'launch.dart';
import 'form.dart';
import 'new.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => FormPage(),
        '/launch': (context) => LaunchPage(),
        '/new': (context) => NewPage(),
      },

      // initialRoute: '/',
      // routes: {
      //   '/': (context) => Home(),
      //   '/previous': (context) => Previous(),
      //   '/coco': (context) => Coco(),
      //   '/newcontact': (context) => Newcontact(),
      // },

      //home: FormPage(),
    );
  }
}
