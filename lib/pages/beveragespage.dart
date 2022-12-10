import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:theater_snacks_app/pages/thankyou.dart';

import '../widgets/itemcounter.dart';

class BeveragesPage extends StatefulWidget {
  const BeveragesPage({super.key});

  @override
  State<BeveragesPage> createState() => _BeveragesPageState();
}

class _BeveragesPageState extends State<BeveragesPage> {

  List<Beverageslist> selectedbeverageslist = Beverageslist.selectedbeverageslist;

  @override
  Widget build(BuildContext context) {
  return Scaffold(
      backgroundColor: Colors.grey[100],
      body: ListView.builder(
        itemCount: Beverageslist.selectedbeverageslist.length,
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
                child: Image.asset(selectedbeverageslist[index].image)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(selectedbeverageslist[index].name,
                  style: TextStyle(
                    fontSize: 20
                  ),),
                  SizedBox(height: 20,),
                  Text(selectedbeverageslist[index].price,
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

class Beverageslist{
  late final String image;
  late final String name;
  late final String price;

  Beverageslist({
    required this.image,
    required this.name,
    required this.price,
  });
  static List<Beverageslist> selectedbeverageslist = [
   Beverageslist(
      image: "asset/coldcoffee.jpg", 
      name: 'Cold Coffee',
      price: "Rs.40"
      ),
      Beverageslist(
      image: "asset/rosemilk.jpg", 
      name: 'Rose Milk',
      price: "Rs.30"
      ),
      Beverageslist(
      image: "asset/badammilk.jpg", 
      name: 'BadamMilk',
      price: "Rs.50"
      ),
      Beverageslist(
      image: "asset/waterbottle.jpg", 
      name: 'Water\nBottles',
      price: "Rs.20"
      ),];
  }
