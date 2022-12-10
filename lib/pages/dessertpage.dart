import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:theater_snacks_app/pages/thankyou.dart';

import '../widgets/itemcounter.dart';

class Dessertpage extends StatefulWidget {
  const Dessertpage({super.key});

  @override
  State<Dessertpage> createState() => _DessertpageState();
}

class _DessertpageState extends State<Dessertpage> {
  @override
  Widget build(BuildContext context) {
    List<dessertlist> selecteddessertlist = dessertlist.selecteddessertlist;
   return Scaffold(
      backgroundColor: Colors.grey[100],
      body: ListView.builder(
        itemCount: dessertlist.selecteddessertlist.length,
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
                child: Image.asset(selecteddessertlist[index].image)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(selecteddessertlist[index].name,
                  style: TextStyle(
                    fontSize: 20
                  ),),
                  SizedBox(height: 20,),
                  Text(selecteddessertlist[index].price,
                  style: TextStyle(
                  fontSize: 20
                  ),),
                  SizedBox(height: 15),
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
class dessertlist{
  late final String image;
  late final String name;
  late final String price;

  dessertlist({
    required this.image,
    required this.name,
    required this.price,
  });
  static List<dessertlist> selecteddessertlist = [
    dessertlist(
      image: "asset/donut.jpg", 
      name: 'Donut',
      price: "Rs.30"
      ),
      dessertlist(
      image: "asset/blackforest.jpg", 
      name: 'Black \nForest',
      price: "Rs.25",
      ),
      dessertlist(
      image: "asset/coneice.jpg", 
      name: 'Cone Ice',
      price: "Rs.20"
      ),
      dessertlist(
      image: "asset/cupicecream.jpg", 
      name: 'Cup Ice',
      price: "Rs.50",
      )];
      }
 