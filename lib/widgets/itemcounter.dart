import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ItemCounter extends StatefulWidget {
  const ItemCounter({super.key});

  @override
  State<ItemCounter> createState() => _ItemCounterState();
}

class _ItemCounterState extends State<ItemCounter> {

  int count =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
                    children: [
                      SizedBox(width: 10,),
                      GestureDetector(
                        child: Icon(Icons.remove,
                        size: 30,),
                        onTap: () {
                          setState(() {
                            if (count>0){
                              count--;
                            }
                          });
                        }, 
                      ),
                      SizedBox(width: 10,),
                      Text(count.toString()),
                      SizedBox(width: 10,),
                      GestureDetector(
                        child: Icon(Icons.add,
                        size: 30,),
                        onTap: () {
                          setState(() {
                            count++;
                          });
                        },
                      )
                    ],
                  ),
    );
  }
}