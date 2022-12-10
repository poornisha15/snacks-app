import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:theater_snacks_app/pages/signin.dart';
import 'package:theater_snacks_app/pages/thankyou.dart';
import 'package:theater_snacks_app/widgets/itemcounter.dart';

class AllPage extends StatefulWidget {
  const AllPage({super.key});

  @override
  State<AllPage> createState() => _AllPageState();
}

class _AllPageState extends State<AllPage> {

  List<alllist> selectedalllist = alllist.selectedalllist;

  @override
  Widget build(BuildContext context) {
    int count = 1;
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: ListView.builder(
        itemCount: alllist.selectedalllist.length,
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
                child: Image.asset(selectedalllist[index].image)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20,bottom: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(selectedalllist[index].name,
                  style: TextStyle(
                    fontSize: 20
                  ),),
                  SizedBox(height: 20,),
                  Text(selectedalllist[index].price,
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
          style: TextStyle(color: Colors.black,fontSize: 22),)),
    );
  }
}
class alllist{
  late final String image;
  late final String name;
  late final String price;
  alllist({
    required this.image,
    required this.name,
    required this.price,
  });
  static List<alllist> selectedalllist = [
    alllist(
      image: "asset/popcorn1.jpg", 
      name: 'Regular Popcorn',
      price: "Rs.40"
      ),
      alllist(
      image: "asset/rosemilk.jpg", 
      name: 'RoseMilk',
      price: "Rs.30",
      ),
      alllist(
      image: "asset/frenchfries.jpg", 
      name: 'FrenchFries ',
      price: "Rs.40"
      ),
      alllist(
      image: "asset/blackforest.jpg", 
      name: 'BlackForest',
      price: "Rs.25",
      ),
      alllist(
      image: "asset/smallpopcorn.jpg", 
      name: 'Small Popcorn',
      price: "Rs.30"
      ),];
}