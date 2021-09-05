  import 'package:flutter/material.dart';
  import 'dart:async';
  //import 'package:auto_size_text/auto_size_text.dart';

class NewPage extends StatelessWidget {
  const NewPage({ Key? key }) : super(key: key);

  static final List<String> items = ['math', 'finance', 'psychologie', 'commerce', 'physique', 'marketing', 'astrologie', 'cognitique'];

  Future<Widget> getImage() async {
    final Completer<Widget> completer = Completer();
    final url = 'https://s3.o7planning.com/images/ha-long-bay.png';
    final image = NetworkImage(url);
    //
    final load = image.resolve(const ImageConfiguration());
     
    // Delay 1 second.
    await Future.delayed(Duration(seconds: 1));
 
    final listener = new ImageStreamListener((ImageInfo info, isSync) async {
      print(info.image.width);
      print(info.image.height);
      completer.complete(Container(child: Image(image: image)));
    });
 
    load.addListener(listener);
    return completer.future;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        //mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 50),
          Image.asset(
            'assets/illustrations/Femme.png',
            //width: 250,
            ),
          SizedBox(height: 40),
          Text('Choose the fields that interest you',
          style: TextStyle(fontSize: 24,
          fontFamily: 'Neuton',
          )
          ),
          // Container(
          //   child: ConstrainedBox(
          //     constraints: BoxConstraints(
          //       minWidth: 300.0,
          //       maxWidth: 300.0,
          //       minHeight: 30.0,
          //       maxHeight: 100.0,
          //     ),
          //     child: AutoSizeText(
          //       "yourText",
          //       style: TextStyle(fontSize: 30.0),
          //     ),
          //   ),
          // ),


          Container(
            height: 400,
              child: Scrollbar(
                child: ListView.builder(
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    final item = items[index];
            
                    return ListTile(title: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: Text("$item",
                        style: TextStyle(fontSize: 20),
                      )
                    ));
                    //return Card
                  },
                  )
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
                Navigator.pushNamed(context, '/launch');
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
