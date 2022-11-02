import 'package:flutter/material.dart';
import 'package:flutter_reto_final/app/ui/views/buttons/buttonnavigation.dart';
import 'package:flutter_reto_final/app/ui/views/home/widgets/AppBar/search.dart';
import 'package:flutter_reto_final/app/ui/views/home/widgets/AppBar/subtittle.dart';
import 'package:flutter_reto_final/app/ui/views/home/widgets/AppBar/tittles.dart';
import 'package:flutter_reto_final/app/ui/views/home/widgets/scrollingHr.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              /*Grandiente*/
              Container(
                width: double.infinity,
                height: 360.0,
                margin: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(255, 117, 103, 1.0),
                      Color.fromRGBO(255, 138, 101, 1.0),
                      Color.fromRGBO(255, 170, 101, 1.0),
                      Color.fromRGBO(251, 224, 126, 1.0),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                /*Contenido del AppBar*/
                child: Column(
                  children: [
                    Tittle(),
                    SizedBox(height: 30.0),
                    SubTittle(),
                    Search(),
                  ],
                ),
              ),
            ],
          ),
          Scroll(),
        ],
      ),
      bottomNavigationBar: BtnPrimary() ,
    );
  }
}
