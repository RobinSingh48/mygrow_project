import 'package:flutter/material.dart';

import '../../App_Manager/media_query_utils.dart';
import '../../App_Manager/string_manager.dart';

class CompanyDetailsCraneService extends StatefulWidget {
  const CompanyDetailsCraneService({Key? key}) : super(key: key);

  @override
  State<CompanyDetailsCraneService> createState() => _CompanyDetailsCraneServiceState();
}

class _CompanyDetailsCraneServiceState extends State<CompanyDetailsCraneService> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Company Details"),
        centerTitle: true,
      ),
      body: Padding(
        padding:  EdgeInsets.symmetric(horizontal: Utils.getHeight(context)/50),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: Utils.getHeight(context)/80,),
              Container(
                  height: Utils.getHeight(context) / 5,
                  width: Utils.getWidth(context),
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      SizedBox(height: Utils.getHeight(context)/60,),
                      Text("Company Name",style: TextStyle(fontWeight: FontWeight.bold,fontSize: AppFontSize.s22),),
                      SizedBox(height: Utils.getHeight(context)/60,),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: Utils.getHeight(context)/30),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Enter Company Name",
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
                      ),

                    ],
                  )
              ),

              SizedBox(height: Utils.getHeight(context)/80,),
              Container(
                  height: Utils.getHeight(context) / 5,
                  width: Utils.getWidth(context),
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      SizedBox(height: Utils.getHeight(context)/60,),
                      Text("GST Number",style: TextStyle(fontWeight: FontWeight.bold,fontSize: AppFontSize.s22),),
                      SizedBox(height: Utils.getHeight(context)/60,),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: Utils.getHeight(context)/30),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Enter Company Name",
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
                      ),

                    ],
                  )
              ),

              SizedBox(height: Utils.getHeight(context)/80,),
              Container(
                  height: Utils.getHeight(context) / 5,
                  width: Utils.getWidth(context),
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      SizedBox(height: Utils.getHeight(context)/60,),
                      Text("Company Address",style: TextStyle(fontWeight: FontWeight.bold,fontSize: AppFontSize.s22),),
                      SizedBox(height: Utils.getHeight(context)/60,),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: Utils.getHeight(context)/30),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "GST Number",
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
                      ),

                    ],
                  )
              ),

              SizedBox(height: Utils.getHeight(context)/80,),
              Container(
                  height: Utils.getHeight(context) / 5,
                  width: Utils.getWidth(context),
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      SizedBox(height: Utils.getHeight(context)/60,),
                      Text("Company Contact Number",style: TextStyle(fontWeight: FontWeight.bold,fontSize: AppFontSize.s22),),
                      SizedBox(height: Utils.getHeight(context)/60,),
                      Padding(
                        padding:  EdgeInsets.symmetric(horizontal: Utils.getHeight(context)/30),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          maxLength: 10,
                          decoration: InputDecoration(
                            counterText: "",
                            hintText: "Enter Company Contact Number",
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
                      ),

                    ],
                  )
              ),

              SizedBox(height: Utils.getHeight(context)/80,),
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
              ),
              SizedBox(height: Utils.getHeight(context)/40,),
            ],
          ),
        ),
      ),
    );
  }
}
