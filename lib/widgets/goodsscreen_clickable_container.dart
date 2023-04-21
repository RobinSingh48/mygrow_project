
import 'package:flutter/material.dart';

class ClickableContainersRowGoods extends StatefulWidget {
  @override
  _ClickableContainersRowState createState() => _ClickableContainersRowState();
}

class _ClickableContainersRowState extends State<ClickableContainersRowGoods> {
  int selectedIndex = -1;

  void onContainerClicked(int index) {
    setState(() {
      selectedIndex = index;
    });
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
              color: selectedIndex == 0 ? Colors.grey : Colors.lightGreen.shade100,
            ),
            margin: EdgeInsets.all(4.0),
            height: 50.0,
            width: 80.0,
            child: Center(child: Text("Open",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),

          ),
        ),
        GestureDetector(
          onTap: () => onContainerClicked(1),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black),
              color: selectedIndex == 1 ? Colors.grey : Colors.lightGreen.shade100,
            ),
            margin: EdgeInsets.all(4.0),
            height: 50.0,
            width: 80.0,
            child: Center(child: Text("Closed",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),

          ),
        ),
        GestureDetector(
          onTap: () => onContainerClicked(2),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.black),
              color: selectedIndex == 2 ? Colors.grey : Colors.lightGreen.shade100,
            ),
            margin: EdgeInsets.all(4.0),
            height: 50.0,
            width: 80.0,
            child: Center(child: Text("Any",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
          ),
        ),
      ],
    );
  }
}
