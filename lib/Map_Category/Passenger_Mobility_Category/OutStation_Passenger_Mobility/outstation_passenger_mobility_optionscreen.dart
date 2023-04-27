import 'package:flutter/material.dart';

import '../../../App_Manager/string_manager.dart';

class OutstationPassengerModeScreen extends StatefulWidget {
  const OutstationPassengerModeScreen({Key? key}) : super(key: key);

  @override
  State<OutstationPassengerModeScreen> createState() => _OutstationPassengerModeScreenState();
}

class _OutstationPassengerModeScreenState extends State<OutstationPassengerModeScreen> {

  bool isOpen  = false;
  String selectOption = "Select Option";
  List <String> listItem = ["Car", "Bus", "Traveller"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Passenger/OutStation&Function"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              InkWell(
                onTap: (){
                  isOpen = !isOpen;
                  setState(() {

                  });
                },
                child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300
                    ),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(selectOption,style: TextStyle(fontWeight: FontWeight.bold,fontSize: AppFontSize.s18),),
                          Icon(isOpen? Icons.keyboard_arrow_up: Icons.keyboard_arrow_down)
                        ],
                      ),
                    )
                ),
              ),
              if(isOpen)
                ListView(
                  primary: true,
                  shrinkWrap: true,
                  children: listItem.map((e) => Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                          onTap: (){
                            selectOption = e;
                            isOpen =  false;
                            setState(() {

                            });
                          },
                          child: Text(e,style: TextStyle(fontSize: AppFontSize.s18),)),
                    ),
                  )).toList(),
                )
            ],
          ),
        ),
      ),
    );
  }
}
