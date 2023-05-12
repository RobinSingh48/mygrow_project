import 'package:flutter/material.dart';
import 'package:mygrow_software_project/App_Manager/media_query_utils.dart';
import 'package:mygrow_software_project/App_Manager/string_manager.dart';
import 'package:mygrow_software_project/partner_info_page.dart';


class SelectModeScreen extends StatelessWidget {
  const SelectModeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Please Select Mode"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: Utils.getHeight(context)/12,
                width: Utils.getHeight(context)/5,
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PartnerInfoScreen(),));
                }, child: Text("Partner",style: TextStyle(fontSize: AppFontSize.s22,fontWeight: FontWeight.bold),))),
            SizedBox(height: Utils.getHeight(context)/25,),
            SizedBox(
              height: Utils.getHeight(context)/12,
                width: Utils.getHeight(context)/5,
                child: ElevatedButton(onPressed: (){}, child: Text("User",style: TextStyle(fontSize: AppFontSize.s22,fontWeight: FontWeight.bold),)))
          ],
        ),
      ),
    );
  }
}
