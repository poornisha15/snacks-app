import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:theater_snacks_app/pages/thankyou.dart';

import '../widgets/itemcounter.dart';

class SnacksPage extends StatefulWidget {
  const SnacksPage({super.key});

  @override
  State<SnacksPage> createState() => _SnacksPageState();
}

class _SnacksPageState extends State<SnacksPage> {
   List<snackslist> selectedsnackslist = snackslist.selectedsnackslist;
  @override
  Widget build(BuildContext context) {
      return Scaffold(
      backgroundColor: Colors.grey[200],
      body: ListView.builder(
        itemCount: snackslist.selectedsnackslist.length,
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
                child: Image.asset(selectedsnackslist[index].image)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(selectedsnackslist[index].name,
                  style: TextStyle(
                    fontSize: 20
                  ),),
                  SizedBox(height: 20,),
                  Text(selectedsnackslist[index].price,
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
class snackslist{
  late final String image;
  late final String name;
  late final String price;

  snackslist({
    required this.image,
    required this.name,
    required this.price,
  });
  static List<snackslist> selectedsnackslist = [
    snackslist(
      image: "asset/frenchfries.jpg", 
      name: 'FrenchFries',
      price: "Rs.40"
      ),
      snackslist(
      image: "asset/egg puff.jpg", 
      name: 'Egg Puff',
      price: "Rs.30",
      ),
      snackslist(
      image: "asset/vegburger.jpg", 
      name: 'Veg Burger',
      price: "Rs.90"
      ),
      snackslist(
      image: "asset/samosa.jpg", 
      name: 'Samosa',
      price: "Rs.40",
      ),
      snackslist(
      image: "asset/potatosmileys.jpg", 
      name: 'Potato\nSmiliyes',
      price: "Rs.30"
      )];
      }
