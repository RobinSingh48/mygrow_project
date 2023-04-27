import 'package:chips_choice_null_safety/chips_choice_null_safety.dart';
import 'package:flutter/material.dart';

import '../../App_Manager/media_query_utils.dart';
import '../../App_Manager/string_manager.dart';
import 'crane_info.dart';

class CraneServiceModeScreen extends StatefulWidget {
  const CraneServiceModeScreen({Key? key}) : super(key: key);

  @override
  State<CraneServiceModeScreen> createState() => _CraneServiceModeScreenState();
}

class _CraneServiceModeScreenState extends State<CraneServiceModeScreen> {

  List<String> tags = [];
  List<String> options = [
    'Toe Vehicle',
    'Flatbed Rescue',
    'Mobile Crane',
    'Leveller',
    'Front Loader',
    'Back Loader',
    'Excavator',
    'Lift and Move'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Online Registration Crane Services"),
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
            Navigator.push(context, MaterialPageRoute(builder: (context) => FullCraneInfo(),));
          }, child: Text("Submit"))
        ],
      ),
    );
  }
}
