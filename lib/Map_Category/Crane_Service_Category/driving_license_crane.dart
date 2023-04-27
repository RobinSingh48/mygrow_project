import 'package:flutter/material.dart';

import '../../../App_Manager/media_query_utils.dart';
import '../../../App_Manager/string_manager.dart';

class DrivingLicenseCrane extends StatefulWidget {
  const DrivingLicenseCrane({Key? key}) : super(key: key);

  @override
  State<DrivingLicenseCrane> createState() => _DrivingLicenseCrane();
}

class _DrivingLicenseCrane extends State<DrivingLicenseCrane> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          title: Text("Online Registration Crane Services"),
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
                        Text("Driving License Number",style: TextStyle(fontWeight: FontWeight.bold,fontSize: AppFontSize.s22),),
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
                Container(
                    height: Utils.getHeight(context) / 2.2,
                    width: Utils.getWidth(context),
                    decoration: BoxDecoration(
                        color: Colors.white, borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        SizedBox(height: Utils.getHeight(context)/40,),
                        Text("Driving License Front",style: TextStyle(fontWeight: FontWeight.bold,fontSize: AppFontSize.s22),),
                        SizedBox(height: Utils.getHeight(context)/40,),
                        Padding(
                            padding:  EdgeInsets.symmetric(horizontal: Utils.getHeight(context)/30),
                            child: Container(
                              height: Utils.getHeight(context)/4,
                              width: Utils.getHeight(context)/2.5,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            )
                        ),

                        SizedBox(height: Utils.getHeight(context)/40,),
                        Container(
                          height: Utils.getHeight(context)/15,
                          width: Utils.getHeight(context)/4,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.green,width: 2),

                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(child: Text("Add Photo",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: AppFontSize.s20),)),
                        )
                      ],
                    )
                ),

                SizedBox(height: Utils.getHeight(context)/40,),
                Container(
                    height: Utils.getHeight(context) / 2.2,
                    width: Utils.getWidth(context),
                    decoration: BoxDecoration(
                        color: Colors.white, borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      children: [
                        SizedBox(height: Utils.getHeight(context)/40,),
                        Text("Driving License Back",style: TextStyle(fontWeight: FontWeight.bold,fontSize: AppFontSize.s22),),
                        SizedBox(height: Utils.getHeight(context)/40,),
                        Padding(
                            padding:  EdgeInsets.symmetric(horizontal: Utils.getHeight(context)/30),
                            child: Container(
                              height: Utils.getHeight(context)/4,
                              width: Utils.getHeight(context)/2.5,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            )
                        ),

                        SizedBox(height: Utils.getHeight(context)/40,),
                        Container(
                          height: Utils.getHeight(context)/15,
                          width: Utils.getHeight(context)/4,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.green,width: 2),

                              borderRadius: BorderRadius.circular(20)
                          ),
                          child: Center(child: Text("Add Photo",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold,fontSize: AppFontSize.s20),)),
                        )
                      ],
                    )
                ),



                SizedBox(height: Utils.getHeight(context)/40,),
                InkWell(
                  onTap: (){},
                  child: Container(
                    height: Utils.getHeight(context)/15,
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
    );;
  }
}
