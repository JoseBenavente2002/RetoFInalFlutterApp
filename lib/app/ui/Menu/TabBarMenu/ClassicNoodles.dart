import 'package:flutter/material.dart';

class ClassicNoodles extends StatelessWidget {
  const ClassicNoodles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Row(
          children: [
            InkWell(
              child: menu(
                "assets/ramenandpork.jpg",
                "\$ 4,99",
                "Classic ramen with \n" "chiken and egg",
              ),
              onTap: () {
                _mysheet(context);
              },
            ),
            InkWell(
              child: menu("assets/ChikenRamenNoodles.jpg", "\$ 6,99",
                  "Chiken Ramen \n" "and Noodles"),
              onTap: () {
                _mysheet(context);
              },
            ),
          ],
        ),
        Row(
          children: [
            InkWell(
              child: menu("assets/GouchujangMisoRamenNoodles.jpg", "\$ 3,50",
                  "Gouchujang Miso Ramen \n" "and Noodles"),
              onTap: () {
                _mysheet(context);
              },
            ),
            InkWell(
              child: menu("assets/NoodleSoupwithChoySum.jpg", "\$ 6,99",
                  "Noodle Soup with \n" "Choy Sum"),
              onTap: () {
                _mysheet(context);
              },
            ),
          ],
        ),
        Row(
          children: [
            menu("assets/RamenNoodleSoup.jpg", "\$ 6,00",
                "Ramen Noodle Soup \n" "chiken and egg"),
            menu("assets/VeggieRamenNoodlesSesame.jpg", "\$ 9,99",
                "Veggie Ramen Noodles \n" "and Sesame"),
          ],
        ),
      ],
    );
  }

  Widget menu(String image1, price1, itemsmenu1) {
    return Expanded(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: Image.asset(
                image1,
                fit: BoxFit.cover,
                width: 210,
              ),
            ),
            height: 200,
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: 210.0,
              child: Text(
                itemsmenu1,
                style: TextStyle(fontSize: 13.0),
              ),
            ),
          ),
          SizedBox(height: 10.0),
          Container(
            width: 220.0,
            height: 50.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: Colors.grey,
            ),
            child: Center(
              child: Text(price1),
            ),
          )
        ],
      ),
    );
  }

  _mysheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Column(
          children: [
            Container(
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  "assets/RamenNoodleSoup.jpg",
                  fit: BoxFit.cover,
                  width: 210,
                ),
              ),
              height: 200,
            ),
            Container(
              margin: EdgeInsets.all(15.0),
              width: double.infinity,
              child: Center(
                child: Text(
                    "Wheat noodles served in a meat-based broth \n"
                    "flavored with soy sauce and tappings (sliced park,\n"
                    "nori, menma and scallions",
                    style:
                        TextStyle(fontWeight: FontWeight.w500, fontSize: 15.0)),
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: 45.0, bottom: 20),
                width: double.infinity,
                child: Text("Nutritional value per plate")),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                plate("300", "kcal"),
                SizedBox(width: 70.0),
                plate("13.1", "Proteins"),
                SizedBox(width: 70.0),
                plate("20.2", "fats"),
                SizedBox(width: 70.0),
                plate("35.6", "Carbs"),
              ],
            ),
            SizedBox(height: 40.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                circular(Icons.add),
                SizedBox(width: 40.0),
                circular(Icons.remove),
                SizedBox(width: 40.0),
                Container(
                  height: 60,
                  width: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.black,
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Add to cart",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(width: 20.0),
                        Text(
                          "\$ 4.99",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        );
      },
    );
  }

  Widget plate(String text1, text2) {
    return Column(
      children: [
        Text(text1),
        Text(text2),
      ],
    );
  }

  Widget circular(IconData icon) {
    return CircleAvatar(
      radius: 30.0,
      backgroundColor: Colors.grey[300],
      child: Icon(icon, color: Colors.black),
    );
  }
}
