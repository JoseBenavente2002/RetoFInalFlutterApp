import 'package:flutter/material.dart';
import 'package:flutter_reto_final/app/ui/Menu/widgets/NoodlesList.dart';

class NoddlesRamen extends StatelessWidget {
  const NoddlesRamen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.6,
      minChildSize: 0.6,
      maxChildSize: 0.90,
      builder: (context, scrollController) {
        return Container(
          child: ListaItems(scrollController),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
          ),
        );
      },
    );
  }
}
