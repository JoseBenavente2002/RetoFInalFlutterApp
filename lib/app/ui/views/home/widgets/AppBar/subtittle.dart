import 'package:flutter/material.dart';

class SubTittle extends StatelessWidget {
  const SubTittle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Align(
        alignment: Alignment.bottomLeft,
        child: Text(
          "Looking 'for somenthing \n"
          "special?",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w900,
            fontSize: 25.0,
          ),
        ),
      ),
    );
  }
}
