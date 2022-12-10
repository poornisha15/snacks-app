import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:theater_snacks_app/pages/homepage.dart';

class Thankyou extends StatefulWidget {
  const Thankyou({super.key});

  @override
  State<Thankyou> createState() => _ThankyouState();
}

class _ThankyouState extends State<Thankyou> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("asset/thankyoucartton.jpg"),
          Center(child: Text("Thank You",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700
          ),)),
          Text("Successfully Booked Your Table",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w400
          ),),
          SizedBox(
            height: 100,
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(builder: (context) => HomePage(),));
            },
             child: Text("Back To Home",
             style: TextStyle(
              fontSize: 20
             ),))
          ],
      ),
    );
  }
}