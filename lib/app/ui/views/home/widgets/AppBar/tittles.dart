import 'package:flutter/material.dart';

class Tittle extends StatelessWidget {
  const Tittle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            radius: 30.0,
            backgroundColor: Colors.black,
            child: Icon(Icons.dashboard_outlined, color: Colors.white),
          ),
          Column(
            children: [
              Text(
                "Deliver to",
                style: TextStyle(fontSize: 12.0),
              ),
              SizedBox(height: 5.0),
              Text(
                "Home",
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          CircleAvatar(
            radius: 30.0,
            backgroundColor: Colors.black,
            child: Icon(Icons.dashboard_outlined, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
