import 'package:flutter/material.dart';

import '../Screens/Passenger_Screen.dart';
import '../Screens/cranes.dart';
import '../Screens/goods_screen.dart';


class ClickableContainersRow extends StatefulWidget {
  @override
  _ClickableContainersRowState createState() => _ClickableContainersRowState();
}

class _ClickableContainersRowState extends State<ClickableContainersRow> {
  int selectedIndex = -1;

  void onContainerClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
    if(selectedIndex==0){
      Navigator.push(context, MaterialPageRoute(builder: (context) => PassengerScreen(),));
    }else if(selectedIndex==1){
      Navigator.push(context, MaterialPageRoute(builder: (context) => GoodsScreen(),));
    }else if(selectedIndex==2){
      Navigator.push(context, MaterialPageRoute(builder: (context) => Cranes(),));
    };
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () => onContainerClicked(0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black),
              color: selectedIndex == 0 ? Colors.grey : Colors.white,
            ),
            margin: EdgeInsets.all(4.0),
            height: 50.0,
            width: 100.0,
            child: Center(child: Text("Passenger",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),

          ),
        ),
        GestureDetector(
          onTap: () => onContainerClicked(1),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black),
              color: selectedIndex == 1 ? Colors.grey : Colors.white,
            ),
            margin: EdgeInsets.all(4.0),
            height: 50.0,
            width: 100.0,
            child: Center(child: Text("Goods",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),

          ),
        ),
        GestureDetector(
          onTap: () => onContainerClicked(2),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black),
              color: selectedIndex == 2 ? Colors.grey : Colors.white,
            ),
            margin: EdgeInsets.all(4.0),
            height: 50.0,
            width: 100.0,
            child: Center(child: Text("Cranes",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
          ),
        ),
      ],
    );
  }
}
