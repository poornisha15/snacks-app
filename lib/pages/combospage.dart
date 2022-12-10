import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:theater_snacks_app/pages/thankyou.dart';

import '../widgets/itemcounter.dart';

class CombosPage extends StatefulWidget {
  const CombosPage({super.key});

  @override
  State<CombosPage> createState() => _CombosPageState();
}

class _CombosPageState extends State<CombosPage> {

  List<Combolist> selectedcombolist = Combolist.selectedcombolist;

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: Colors.grey[100],
      body: ListView.builder(
        itemCount: Combolist.selectedcombolist.length,
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
                child: Image.asset(selectedcombolist[index].image)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(selectedcombolist[index].name,
                  style: TextStyle(
                    fontSize: 20
                  ),),
                  SizedBox(height: 20,),
                  Text(selectedcombolist[index].price,
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
class Combolist{
  late final String image;
  late final String name;
  late final String price;

  Combolist({
    required this.image,
    required this.name,
    required this.price,
  });
  static List<Combolist> selectedcombolist = [
    Combolist(
      image: "asset/combo4.jpg", 
      name: 'Regular\n Popcorn \n + CocaCola',
      price: "Rs.90"
      ),
      Combolist(
      image: "asset/combo 3.jpg", 
      name: 'ButterPopcorn\n +Pepsi',
      price: "Rs.100",
      ),
      Combolist(
      image: "asset/combo 2.jpg", 
      name: 'Popcorn\n + CocaCola\n + FrenchFries',
      price: "Rs.150"
      ),
      Combolist(
      image: "asset/combo 1.jpg", 
      name: 'MixedPack',
      price: "Rs.180",
      ),];
  }
