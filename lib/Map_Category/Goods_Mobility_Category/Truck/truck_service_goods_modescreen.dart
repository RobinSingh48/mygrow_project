import 'dart:ffi';

import 'package:chips_choice_null_safety/chips_choice_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:mygrow_software_project/App_Manager/string_manager.dart';
import 'package:mygrow_software_project/Map_Category/Goods_Mobility_Category/Truck/truck_full_info.dart';


import '../../../App_Manager/media_query_utils.dart';

class TruckServiceGoodsModeScreen extends StatefulWidget {
  const TruckServiceGoodsModeScreen({Key? key}) : super(key: key);

  @override
  State<TruckServiceGoodsModeScreen> createState() =>
      _TruckServiceGoodsModeScreenState();
}

class _TruckServiceGoodsModeScreenState
    extends State<TruckServiceGoodsModeScreen> {
  List<String> tags = [];
  List<String> options = [
    '3-wheeler',
    'Ace/Dost',
    'Pick-up/Tata 407',
    'Small(10-20Feet)',
    'Medium(20-30Feet)',
    'Large(31-40Feet)',
    'Extra Large(41-60Feet)'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Online Registration Truck Services"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: Utils.getHeight(context)/20,),
          Center(child: Text("Select Vehicle",style: TextStyle(fontSize: AppFontSize.s24,fontWeight: FontWeight.bold),)),
          Container(
            height: Utils.getHeight(context)/3,
            child: ChipsChoice<String>.multiple(
              wrapped: true,
              value: tags,
              onChanged: (val) => setState(() => tags = val),
              choiceItems: C2Choice.listFrom<String, String>(
                source: options,
                value: (i, v) => v,
                label: (i, v) => v,
              ),
              choiceStyle: C2ChoiceStyle(color: Colors.grey,
              labelStyle: TextStyle(fontSize: AppFontSize.s18,fontWeight: FontWeight.bold),

              ),

              choiceActiveStyle: C2ChoiceStyle(color: Colors.blue,
                labelStyle: TextStyle(fontSize: AppFontSize.s18,fontWeight: FontWeight.bold),),
            ),
          ),
          ElevatedButton(onPressed: (){
            setState(() {
              print(tags.toList());
            });
            Navigator.push(context, MaterialPageRoute(builder: (context) => TruckFullInfo(),));
          }, child: Text("Submit"))
        ],
      ),
    );
  }
}
