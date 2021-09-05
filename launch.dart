import 'package:flutter/material.dart';

class LaunchPage extends StatelessWidget {
  const LaunchPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 250),
          Image.asset(
            'assets/illustrations/Logo.png',
            width: 250,
            ),
          SizedBox(height: 40),
          Text('Chao',
          style: TextStyle(fontSize: 64,
          fontFamily: 'Neuton',
          ),
          ),
          SizedBox(height: 40),
          Text('Make use of your unsused time',
          style: TextStyle(fontSize: 24,
          fontFamily: 'Neuton',
          ),
          ),
      ],
      ),
    );
  }
}
