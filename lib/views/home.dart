import 'package:flutter/material.dart';
import 'package:flutter_responsive/widgets/CardItem.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      backgroundColor: Color(0xFF212239),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Your Cards",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),
            ),
            Expanded(
              child: AnimatedSwitcher(
                duration: const Duration(seconds: 1), 
                transitionBuilder: (widget, animation){
                  return ScaleTransition(
                    scale: animation,
                    child: widget,
                  );
                },
                child: orientation == Orientation.portrait ?  
                ListView.builder(
                  itemCount: 20,
                  itemBuilder: (context, index){
                  return Center(
                    child: CardItem(
                      color: Colors.primaries[index % Colors.primaries.length]
                    )
                  );
                })
              : 
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
                itemCount: 20,
                itemBuilder: (context, index){
                return Center(
                  child: CardItem(
                    color: Colors.primaries[index % Colors.primaries.length]
                  )
                );
              })
              ),
            ),
          ],
        ),
      ),
    );
  }
}
