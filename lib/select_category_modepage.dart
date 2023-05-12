import 'package:flutter/material.dart';


import 'App_Manager/media_query_utils.dart';
import 'App_Manager/string_manager.dart';
import 'Map_Category/Crane_Service_Category/select_crane_type_crane_service.dart';
import 'Map_Category/Goods_Mobility_Category/goods_mobility_modescreen.dart';
import 'Map_Category/Passenger_Mobility_Category/passenger_mobility_modescreen.dart';

class SelectCategoryModeScreen extends StatefulWidget {
  const SelectCategoryModeScreen({Key? key}) : super(key: key);

  @override
  State<SelectCategoryModeScreen> createState() => _SelectCategoryModeScreenState();
}

class _SelectCategoryModeScreenState extends State<SelectCategoryModeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Mode"),
        centerTitle: true,
      ),
      body: Padding(
        padding:  EdgeInsets.only(top: Utils.getHeight(context)/25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const PassengerMobilityModeScreen(),));
                },
                child: Container(
                  color: Colors.blue,
                  width: double.infinity,
                  height: Utils.getHeight(context)/10,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Passenger Mobility",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: AppFontSize.s18),),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: Utils.getHeight(context)/25,),
              GestureDetector(
                onTap: (){

                  Navigator.push(context, MaterialPageRoute(builder: (context) => const GoodsMobilityModeScreen(),));
                },
                child: Container(
                  color: Colors.blue,
                  width: double.infinity,
                  height: Utils.getHeight(context)/10,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Goods Mobility",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: AppFontSize.s18),),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: Utils.getHeight(context)/25,),
              GestureDetector(
                onTap: (){

                  Navigator.push(context, MaterialPageRoute(builder: (context) => const CraneServiceModeScreen(),));
                },
                child: Container(
                  color: Colors.blue,
                  width: double.infinity,
                  height: Utils.getHeight(context)/10,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text("Crane Service",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: AppFontSize.s18),),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
