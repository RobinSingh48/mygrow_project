import 'package:flutter/material.dart';


class ClickableContainersRowPassenger extends StatefulWidget {
  @override
  _ClickableContainersRowState createState() => _ClickableContainersRowState();
}

class _ClickableContainersRowState extends State<ClickableContainersRowPassenger> {
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
              border: Border.all(color: Colors.blue),
              color: selectedIndex == 0 ? Colors.grey : Colors.yellow.shade100,
            ),
            margin: EdgeInsets.all(4.0),
            height: 50.0,
            width: 100.0,
            child: Center(child: Text("Car",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),

          ),
        ),
        GestureDetector(
          onTap: () => onContainerClicked(1),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.blue),
              color: selectedIndex == 1 ? Colors.grey : Colors.yellow.shade100,
            ),
            margin: EdgeInsets.all(4.0),
            height: 50.0,
            width: 100.0,
            child: Center(child: Text("Bus",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),

          ),
        ),
        GestureDetector(
          onTap: () => onContainerClicked(2),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.blue),
              color: selectedIndex == 2 ? Colors.grey : Colors.yellow.shade100,
            ),
            margin: EdgeInsets.all(4.0),
            height: 50.0,
            width: 100.0,
            child: Center(child: Text("Traveller",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
          ),
        ),
      ],
    );
  }
}
