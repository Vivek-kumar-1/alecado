import 'package:alecado/upper_screen.dart';
import 'package:flutter/material.dart';

import 'lower_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomepage(),
    );
  }
}

class MyHomepage extends StatefulWidget {
  const MyHomepage({Key? key}) : super(key: key);

  @override
  _MyHomepageState createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        // ignore: prefer_const_constructors
        children: [
    /// for Uperscreen
ListView(
      children: [
        Container(
          padding: EdgeInsets.only(top: 150),
          height: height.infinity,
          width: width.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular( 90.0),
              topRight: Radius.circular(90.0),
            ),

            child: Column(
              children: [
                Text("2 Halls Left", style: TextStyle(FontSize: 10, color: Colors.red)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Name", TextStyle(FontSize: 14, color: Colors.black)),
                    Icon(Icons.edit_outlined, size: 12),
                  ]
                ),
                sizedBox(height: 10),
                Text('Type Short Note', TextStyle(FontSize: 8, )),

                sizedBox(height: 15),
                Text('Product Details', TextStyle(FontSize: 14, color: Colors.black)),
                sizedBox(height: 15),
                Text('Write short description about product.', TextStyle(FontSize: 8,),),
                sizedBox(height: 15),
                Text('Price', TextStyle(FontSize: 14, color: Colors.black),),
                sizedBox(height: 16),
                Text('Type price of your product.', TextStyle(FontSize: 10,),),
                sizedBox(height: 500)

                Row(
                  children: [
                    CircleAvatar(
                        backgroundColor: Colors.green.shade800,
                        child: Icon(Icons.minus, color: Colors.white),

                      ),
                      sizedBox(width: 10),
                      Text("o1", style: TextStyle(color: Colors.black, FontSize: 12),),
                      sizedBox(width: 20),
                      CircleAvatar(
                        backgroundColor: Colors.green.shade800,
                        child: Icon(Icons.plus, color: Colors.white),

                      ),
                      sizedBox(width: 10),
                      Text("Set Qty", style: TextStyle(color: Colors.black, FontSize:12),),

                  ]
                ),
                Container(
                  decoratioin: BoxDecoration(
                    borderRadius: Radius.circular(10),
                  ),
                  child: FlatButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  child: Text('Save', TextStyle(FontSize: 13)),
                    onPressed: () {
                    
                     },
                   ),
                )
              ]
            )
          ),
        )
      ]
    );

    // for lowerscreen
    Container(
      height: 130.0,
      // width: 120.0,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/assets/alucard.jpg'),
          fit: BoxFit.fill,
        ),
        // shape: BoxShape.circle,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.left_arrow, size: 16),
          Icon(Icons.location, size: 14),
          Center(
            child: Row(
              Icon(Icons.edit_outlined, size: 12),
              SizedBox(width: 13),
              Text("Update pictures", style: TextStyle(FontSize: 10))
            )
          )
        ],
      ),
    );


        ],
      ),
    );
  }
}
