import 'package:flutter/material.dart';

class FormPage extends StatelessWidget {
  const FormPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        //mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 50),
          Image.asset(
            'assets/illustrations/Group.png',
            //width: 250,
            ),
          SizedBox(height: 40),
          Container(
            width: 300,
            child: TextField(
              //obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
              ),
            ),
          ),
          SizedBox(height: 15,),
          Container(
            width: 300,
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ),
          
          SizedBox(height: 30,),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.black87,
                textStyle: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Neuton',
                )
              ),
              
              onPressed: () {
                Navigator.pushNamed(context, '/new');
                print("Pressed on the connect button, we are gong to take you to the next page");
              }, 
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Text('Connect via Wikipedia'),
              ),
              //padding: EdgeInsets.all(20),
              ),
          // SizedBox(height: 40),
          // Text('Make use of your unsused time',
          // style: TextStyle(fontSize: 24,
          // fontFamily: 'Neuton',
          // ),
          // ),
      ],
      ),
    );
  }
}
