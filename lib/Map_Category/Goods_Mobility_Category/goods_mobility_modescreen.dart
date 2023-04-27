import 'package:flutter/material.dart';
import 'package:mygrow_software_project/Map_Category/Goods_Mobility_Category/PackerAndMove/company_details.dart';



import '../../App_Manager/media_query_utils.dart';
import '../../App_Manager/string_manager.dart';
import 'Truck/truck_service_goods_modescreen.dart';

class GoodsMobilityModeScreen extends StatefulWidget {
  const GoodsMobilityModeScreen({Key? key}) : super(key: key);

  @override
  State<GoodsMobilityModeScreen> createState() =>
      _GoodsMobilityModeScreenState();
}

class _GoodsMobilityModeScreenState extends State<GoodsMobilityModeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Goods Mobility"),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: Utils.getHeight(context)/25),
        child: SingleChildScrollView(
            child: Column(children: [
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const TruckServiceGoodsModeScreen(),));
            },
            child: Container(
              color: Colors.blue,
              width: double.infinity,
              height: Utils.getHeight(context) / 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Regular Truck Service",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: AppFontSize.s18),
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: Utils.getHeight(context) / 25,
          ),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const CompanyDetailsPackerAndMoveScreen(),));
            },
            child: Container(
              color: Colors.blue,
              width: double.infinity,
              height: Utils.getHeight(context) / 10,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Packer & Move",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: AppFontSize.s18),
                    ),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
              ),
            ),
          ),
        ])),
      ),
    );
  }
}
