import 'package:flutter/material.dart';

class lowerScreen extends StatelessWidget {
  // const lowerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        container(
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
                Text("2 Halls Left"),
                Row(
                  children: [
                    Text("Name"),
                    Icon(Icons.edit_outlined),
                  ]
                ),
                sizedBox(height: 10),
                Text('Type Short Note'),

                sizedBox(height: 15),
                Text('Product Details'),
                sizedBox(height: 15),
                Text('Write short description about product.'),
                sizedBox(height: 15),
                Text('Price'),
                sizedBox(height: 16),
                Text('Type price of your product.'),
                sizedBox(height: 500),

                Row(
                  children: [
                    CircleAvatar(
                        backgroundColor: Colors.green.shade800,
                        child: Icon(Icons.minus, color: Colors.white),

                      ),
                      sizedBox(width: 10),
                      Text("o1", style: TextStyle(color: Colors.black),),
                      sizedBox(width: 20),
                      CircleAvatar(
                        backgroundColor: Colors.green.shade800,
                        child: Icon(Icons.plus, color: Colors.white),

                      ),
                      sizedBox(width: 10),
                      Text("Set Qty", style: TextStyle(color: Colors.black),),

                  ]
                ),
                Container(
                  decoratioin: BoxDecoration(
                    borderRadius: Radius.circular(10),
                  ),
                  child: FlatButton(
                  color: Colors.green,
                  textColor: Colors.white,
                  child: Text('Save',),
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
  }
}
