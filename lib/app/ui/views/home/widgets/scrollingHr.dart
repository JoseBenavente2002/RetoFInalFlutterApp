import 'package:flutter/material.dart';
import 'package:flutter_reto_final/app/ui/views/home/widgets/TabBar/burgers.dart';
import 'package:flutter_reto_final/app/ui/views/home/widgets/TabBar/noodles.dart';
import 'package:flutter_reto_final/app/ui/views/home/widgets/TabBar/pizzas.dart';
import 'package:flutter_reto_final/app/ui/views/home/widgets/TabBar/sweets.dart';
import 'package:flutter_reto_final/app/ui/views/home/widgets/TabBar/tacos.dart';

class Scroll extends StatelessWidget {
  const Scroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      initialIndex: 0,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10.0),
              height: 45.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: TabBar(
                labelColor: Colors.grey,
                isScrollable: true,
                indicator: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                tabs: [
                  Tab(
                    child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.abc),
                        ],
                      ),
                    ),
                  ),
                  Tab(child: tabView(Icons.abc, "Noodles")),
                  Tab(child: tabView(Icons.abc, "Tacos")),
                  Tab(child: tabView(Icons.abc, "Burgers")),
                  Tab(child: tabView(Icons.abc, "Pizzas")),
                  Tab(child: tabView(Icons.abc, "Sweets"))
                ],
              ),
            ),
            Container(
              height: 340,
              child: TabBarView(
                children: [
                  Noodles(),
                  Noodles(),
                  Tacos(),
                  Burgers(),
                  Pizzas(),
                  Sweets(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget tabView(IconData icon, String text) {
    return Container(
      child: Row(
        children: [
          Icon(icon),
          SizedBox(width: 10.0),
          Text(text),
        ],
      ),
    );
  }
}
