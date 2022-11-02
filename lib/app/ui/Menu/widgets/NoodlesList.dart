import 'package:flutter/material.dart';
import 'package:flutter_reto_final/app/ui/Menu/TabBarMenu/ScrollhrMenu.dart';
import 'package:flutter_reto_final/app/ui/Menu/noodels/classicRamen.dart';
import 'package:flutter_reto_final/app/ui/Menu/widgets/BottomModal.dart';

class NoodlesList extends StatefulWidget {
  const NoodlesList({Key? key}) : super(key: key);

  @override
  State<NoodlesList> createState() => _NoodlesListState();
}

class _NoodlesListState extends State<NoodlesList> {
  double _percent = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 340,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/Ramen.jpg"),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: icon(Icons.more_horiz),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: icon(Icons.arrow_back_sharp),
          ),
          NotificationListener<DraggableScrollableNotification>(
            onNotification: (notification) {
              setState(() {
                _percent = 2 * notification.extent - 0.9;
              });
              return true;
            },
            child: BottomModal(),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: -130 * (1 - _percent),
            child: SearchDestination(),
          ),
        ],
      ),
    );
  }

  Widget icon(IconData icon) {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: CircleAvatar(
        radius: 30.0,
        backgroundColor: Color.fromRGBO(109, 103, 101, 0.5),
        child: Icon(icon, color: Colors.white),
      ),
    );
  }
}

/**/

/**/
class SearchDestination extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: icon(Icons.more_horiz),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: icon(Icons.arrow_back_sharp),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget icon(IconData icon) {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: CircleAvatar(
        radius: 30.0,
        backgroundColor: Color.fromRGBO(109, 103, 101, 0.5),
        child: Icon(icon, color: Colors.white),
      ),
    );
  }
}

/*Lista de item Controller Draggable bottom*/
class ListaItems extends StatelessWidget {
  final ScrollController scrollController;

  ListaItems(this.scrollController);

  @override
  Widget build(BuildContext context) {
    return ListView(
      controller: this.scrollController,
      children: [
        Container(
          margin: EdgeInsets.only(left: 15),
          child: Text(
            "Noodles & Ramen",
            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 15),
          child: Text(
            "802 avenum, 153673",
            style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w300),
          ),
        ),
        SizedBox(height: 10.0),
        texto("Delivery Timer", "30 - 45 minutes"),
        texto("Delivery Cost ", "\$ 5 - 10 dollars"),
        ScrollMenu(),
      ],
    );
  }
}

/*Reutilizacion de widgets texto delivery y costo*/
Widget texto(String text1, text2) {
  return Expanded(
    child: Container(
      margin: EdgeInsets.only(left: 0, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 30.0),
          Text(
            text1,
            style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 20.0, width: 282.0),
          Text(
            text2,
            style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    ),
  );
}
