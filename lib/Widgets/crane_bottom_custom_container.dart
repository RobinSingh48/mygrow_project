import 'package:flutter/material.dart';

class ContainerRow extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 60,
          height: 80,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(8)
          ),
          child: Center(child: Text("Profile")),
        ),
        Container(
          width: 60,
          height: 80,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(8)
          ),
          child: Center(child: Text("Order\nDetails")),
        ),
        Container(
          width: 60,
          height: 80,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(8)
          ),
          child: Center(child: Text("Wallet",style: TextStyle(fontSize: 18),)),
        ),
        Container(
          width: 60,
          height: 80,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(8)
          ),
          child: Center(child: Text("Became\nPartner")),
        ),
        Container(
          width: 60,
          height: 80,
          decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(8)
          ),
          child: Center(child: Text("Help",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
        ),
      ],
    );
  }
}
