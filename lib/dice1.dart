import 'dart:math';
import 'package:flutter/material.dart';

class Dice_App extends StatefulWidget {
  const Dice_App({Key? key}) : super(key: key);

  @override
  State<Dice_App> createState() => _Dice_AppState();
}

class _Dice_AppState extends State<Dice_App> {
  List l1=[
    "assets/images/dice1.png",
    "assets/images/dice2.png",
    "assets/images/dice3.png",
    "assets/images/dice4.png",
    "assets/images/dice5.png",
    "assets/images/dice6.png",
  ];
  List l2=[
  "assets/images/dice1.png",
  "assets/images/dice2.png",
  "assets/images/dice3.png",
  "assets/images/dice4.png",
  "assets/images/dice5.png",
  "assets/images/dice6.png",
  ];
  int i=0;
  int j=0;
  int ans=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DICE APP"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
        Image.asset(
        "${l1[i]}",
          height: 150,
          width: 150,
            ),
            Image.asset(
              "${l2[j]}",
              height: 150,
              width: 150,
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () {
              Random rnd=Random();
              int z= rnd.nextInt(6);
              int f=rnd.nextInt(6);
              setState(() {
                i=z;
                j=f;
                ans=z+f+2;
              });
            }, child: Text("Roll")),
              Text("$ans",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
          ],
        ),
      ),
    );
  }
}
