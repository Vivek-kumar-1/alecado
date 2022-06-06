import 'package:flutter/material.dart';

class upperScreen extends StatelessWidget {
  const upperScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          Icon(Icons.left_arrow),
          Icon(Icons.location),
          Center(
            child: Row(
              Icon(Icons.edit_outlined),
              SizedBox(width: 13),
              Text("Update pictures")
            )
          )
        ],
      ),
    );
  }
}
