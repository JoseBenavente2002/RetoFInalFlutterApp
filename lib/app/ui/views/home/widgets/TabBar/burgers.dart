import 'package:flutter/material.dart';
import 'package:flutter_reto_final/app/ui/Menu/widgets/NoodlesList.dart';

class Burgers extends StatelessWidget {
  const Burgers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(right: 200),
            child: Text(
              "Fastest delivery time",
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
            ),
          ),
          SizedBox(height: 10),
          InkWell(
            onTap: () {
              Navigator.push<void>(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const NoodlesList(),
                ),
              );
            },
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                 height: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://media-cldnry.s-nbcnews.com/image/upload/newscms/2019_21/2870431/190524-classic-american-cheeseburger-ew-207p.jpg"),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20.0),
                  width: 150,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  child: Center(
                    child: Text("30-45 min"),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.only(right: 280),
            child: Text(
              "Burgers & Chicken",
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 315),
            child: Text(
              "802 avenum, 153673",
              style: TextStyle(
                  fontSize: 10.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey),
            ),
          ),
        ],
      ),
    );
  }
}
