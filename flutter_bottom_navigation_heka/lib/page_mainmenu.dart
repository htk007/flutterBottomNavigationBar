import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount:100,itemExtent:100,itemBuilder: (context, index){
      return Container(
        padding: EdgeInsets.all(10),
        child: Material(
          elevation: 4,
          borderRadius: BorderRadius.circular(10),
          color: index %2==0? Colors.lightBlueAccent.shade400: Colors.pinkAccent.shade200,
          child: Center(child: Text(index.toString()),),
        ),
      );
    });
  }
}
