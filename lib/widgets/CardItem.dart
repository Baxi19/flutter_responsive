import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  final Color color;

  const CardItem({required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 160,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [color.withOpacity(0.3), color],
            ),
            borderRadius: BorderRadius.circular(20.0)),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("\$3000,0"),
              Spacer(),
              Text("4200 **** **** 0420"),
              Text("Baxi 19"),
            ],
          ),
        ),
      ),
    );
  }
}
