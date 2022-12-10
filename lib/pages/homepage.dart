import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:theater_snacks_app/pages/allpage.dart';
import 'package:theater_snacks_app/pages/beveragespage.dart';
import 'package:theater_snacks_app/pages/combospage.dart';
import 'package:theater_snacks_app/pages/dessertpage.dart';
import 'package:theater_snacks_app/pages/popcornpage.dart';
import 'package:theater_snacks_app/pages/snackspage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
  
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
  }
  
  @override
  Widget build(BuildContext context) {

    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Text("Grab a Bite!",
        style: TextStyle(fontSize: 23,color: Colors.black),),
      ),
      body: Column(
        children: [
          SizedBox(height: 10,),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15)),
              elevation: 5,
                      child: TabBar(
                        isScrollable: true,
                        unselectedLabelColor: Colors.black45,
                        labelColor: Colors.black,
                        tabs: [
                          Tab(text: 'All',),
                          Tab(text: 'Popcorn'),
                          Tab(text: 'Snacks'),
                          Tab(text: 'Desserts'),
                          Tab(text: 'Beverages'),
                          Tab(text: 'Combos'),
                        ],
                        controller: _tabController,
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey[400]
                        ),
                        indicatorSize: TabBarIndicatorSize.label,
                        labelStyle: TextStyle(fontSize: 22),
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          AllPage(),
                          PopcornPage(),
                          SnacksPage(),
                          Dessertpage(),
                          BeveragesPage(),
                          CombosPage(),
                          ],))
        ]),
    );
  }
}