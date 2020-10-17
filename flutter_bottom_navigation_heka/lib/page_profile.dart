import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  List<String>  menuListe =["Temel bilgiler", "Adresler","Ödeme Bilgileri", "Favoriler","Kuponlar", " Özel Fırsatlar","Önceki siparişler"];


  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount:menuListe.length-1 ,itemBuilder: (context, index){
      return ExpansionTile(
        title: Text(menuListe[index]),
        children: <Widget>[
          Container(
            color: index %2==0? Colors.red.shade200: Colors.yellow.shade300,
            height: 100,
          )
        ],
      );
    });
  }
}
