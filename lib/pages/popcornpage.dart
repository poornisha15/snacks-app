import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:theater_snacks_app/pages/thankyou.dart';

import '../widgets/itemcounter.dart';

class PopcornPage extends StatefulWidget {
  const PopcornPage({super.key});

  @override
  State<PopcornPage> createState() => _PopcornPageState();
}

class _PopcornPageState extends State<PopcornPage> {

  List<popcornlist> selectedpopcornlist = popcornlist.selectedpopcornlist;
  int currentvalue = 0;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: Colors.grey[100],
      body: ListView.builder(
        itemCount: popcornlist.selectedpopcornlist.length,
        itemBuilder: ((context, index) {
          return Column(
            children: [
              SizedBox(height: 15,),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 35,bottom: 10),
              child: SizedBox(
                height: 150,
                width: 150,
                child: Image.asset(selectedpopcornlist[index].image)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(selectedpopcornlist[index].name,
                  style: TextStyle(
                    fontSize: 20
                  ),),
                  SizedBox(height: 20,),
                  Text(selectedpopcornlist[index].price,
                  style: TextStyle(
                  fontSize: 20
                  ),),
                  SizedBox(height: 15,),
                  Container(
                    height: 30,
                    width: 110,
                    child: ItemCounter()), 
                ]),
            ),
          ]),
        ]);
        }),),
        floatingActionButtonLocation:FloatingActionButtonLocation.endDocked ,
        floatingActionButton: ElevatedButton(
          onPressed: () {
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) => Thankyou(),));
          }, child: Text("Buy",
          style: TextStyle(
            fontSize: 22,
            color: Colors.black
          ),)),
    );
  }
}

class popcornlist{
  late final String image;
  late final String name;
  late final String price;

  popcornlist({
    required this.image,
    required this.name,
    required this.price,
  });
  static List<popcornlist> selectedpopcornlist = [
    popcornlist(
      image: "asset/popcorn1.jpg", 
      name: 'Regular Popcorn',
      price: "Rs.40"
      ),
      popcornlist(
      image: "asset/butterpopcorn.jpg", 
      name: 'ButterPopcorn',
      price: "Rs.80",
      ),
      popcornlist(
      image: "asset/caramelpopcorn.jpg", 
      name: 'Caramal Popcorn',
      price: "Rs.90"
      ),
      popcornlist(
      image: "asset/largepopcorn.jpg", 
      name: 'Large Popcorn',
      price: "Rs.120",
      ),
      popcornlist(
      image: "asset/smallpopcorn.jpg", 
      name: 'Small Popcorn',
      price: "Rs.30"
      ),];
      }