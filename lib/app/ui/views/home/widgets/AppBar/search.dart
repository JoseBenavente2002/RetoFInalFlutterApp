import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(40.0),
      child: Center(
        child: TextField(
          //autofocus: true,
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            fillColor: Colors.white,
            focusColor: Colors.white,
            hoverColor: Colors.white,
            prefix: Icon(
              Icons.search,
            ),
            hintText: "find whatever you need",
            contentPadding: EdgeInsets.all(10.0),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide(
                color: Colors.white,
                width: 3,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
