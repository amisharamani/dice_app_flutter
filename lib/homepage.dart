import 'dart:math';

import 'package:flutter/material.dart';
import 'package:dice_app/utils/string_utils.dart';
class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  // String displayimage=dicepath+i2;
  int d1=1;
  int d2=1;


  @override
  Widget build(BuildContext context) {
    Random r= Random();

    d1=r.nextInt(6)+1;
    d2=r.nextInt(6)+1;
    int sum=d1+d2;
    return  SafeArea(
      child: Scaffold(
        body: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  image:DecorationImage(
                  image: AssetImage(dicepath+diceBg),
                  fit :BoxFit.cover,
                ),
                ),
              ),
              Column(
                children: [
                  Spacer(),
                  Text("Total Amount : $sum"),
                Spacer(),
                Expanded(
                child:Row(
                  children: [
                    Spacer(),
                    Expanded(
                      flex: 25,
                      child: Image.asset(
                        "${dicepath}$d1.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(width: 5,),
                    Expanded(
                      flex: 25,
                      child: Image.asset(
                        "${dicepath}$d2.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                    Spacer(),
                  ],
                ),
                ),
                  Spacer(),
                  GestureDetector(
                    onTap:(){
                      setState((){});
                        },
                 child : Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(dicepath+dicebtn),
                      Text("Roll Dice",style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ],
                  ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
