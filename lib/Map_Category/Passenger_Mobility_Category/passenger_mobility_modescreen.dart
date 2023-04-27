import 'package:flutter/material.dart';
import 'package:mygrow_software_project/App_Manager/string_manager.dart';
import 'package:mygrow_software_project/Map_Category/Passenger_Mobility_Category/Parcle/parcel.dart';

import '../../App_Manager/media_query_utils.dart';
import 'Daily_Passenger_Mobility/daily_passenger_mobility_optionscreen.dart';
import 'OutStation_Passenger_Mobility/outstation_passenger_mobility_optionscreen.dart';


class PassengerMobilityModeScreen extends StatefulWidget {
  const PassengerMobilityModeScreen({Key? key}) : super(key: key);

  @override
  State<PassengerMobilityModeScreen> createState() => _PassengerMobilityModeScreenState();
}

class _PassengerMobilityModeScreenState extends State<PassengerMobilityModeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Passenger Mobility"),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding:  EdgeInsets.only(top: Utils.getHeight(context)/25),
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const DailyPassengerModeScreen(),));
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
                        Text("Daily",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: AppFontSize.s18),),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: Utils.getHeight(context)/25,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const OutstationPassengerModeScreen(),));
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
                        Text("OutStation/Function",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: AppFontSize.s18),),
                        Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: Utils.getHeight(context)/25,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ParcelModeScreen(),));
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
                        Text("Parcel",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: AppFontSize.s18),),
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
