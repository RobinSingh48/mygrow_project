import 'package:flutter/material.dart';
import 'package:mygrow_software_project/App_Manager/string_manager.dart';

import '../../../../App_Manager/media_query_utils.dart';


class RickShawNumberPlateScreen extends StatefulWidget {
  const RickShawNumberPlateScreen({Key? key}) : super(key: key);

  @override
  State<RickShawNumberPlateScreen> createState() => _RickShawNumberPlateScreen();
}

class _RickShawNumberPlateScreen extends State<RickShawNumberPlateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          title: Text("Online Registration Auto-Rickshaw"),
          centerTitle: true,
        ),
        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: Utils.getHeight(context)/50),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: Utils.getHeight(context)/40,),
                Container(
                    height: Utils.getHeight(context) / 5,
                    width: Utils.getWidth(context),
                    decoration: BoxDecoration(
                        color: Colors.white, borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        SizedBox(height: Utils.getHeight(context)/40,),
                        Text("Auto-Rickshaw Number ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: AppFontSize.s22),),
                        SizedBox(height: Utils.getHeight(context)/40,),
                        Padding(
                          padding:  EdgeInsets.symmetric(horizontal: Utils.getHeight(context)/30),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(width: 1.0, color: Colors.black),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: BorderSide(width: 1.0, color: Colors.black),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                ),
                SizedBox(height: Utils.getHeight(context)/40,),
                InkWell(
                  onTap: (){},
                  child: Container(
                    height: Utils.getHeight(context)/17,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(child: Text("Done")),
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
