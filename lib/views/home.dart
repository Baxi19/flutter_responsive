import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index){
                return Center(
                  child: _CardItem(
                    color: Colors.primaries[index % Colors.primaries.length]
                  )
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}

class _CardItem extends StatelessWidget {
  final Color color;

  const _CardItem({
    Key? key, required this.color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 160,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors:[
              color.withOpacity(0.3),
              color
            ],
          ),
          borderRadius: BorderRadius.circular(20.0)
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("\$15,872"),
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
