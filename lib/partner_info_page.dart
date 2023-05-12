import 'package:flutter/material.dart';
import 'package:mygrow_software_project/App_Manager/string_manager.dart';
import 'package:mygrow_software_project/select_category_modepage.dart';
import 'package:mygrow_software_project/user/passenger/partner_api.dart';

import 'App_Manager/media_query_utils.dart';

class PartnerInfoScreen extends StatefulWidget {
  const PartnerInfoScreen({Key? key}) : super(key: key);

  @override
  State<PartnerInfoScreen> createState() => _PartnerInfoScreenState();
}

class _PartnerInfoScreenState extends State<PartnerInfoScreen> {
  var key = GlobalKey<FormState>();



  TextEditingController nameController = TextEditingController();
  TextEditingController contactController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Partner Info"),
        centerTitle: true,
      ),
     body: Form(
       key: key,
       child: SingleChildScrollView(
         child: Column(
           children: [
             SizedBox(height: Utils.getHeight(context)/25,),
             Text("Partner Name",style: TextStyle(fontSize: AppFontSize.s24),),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: TextFormField(
                 controller: nameController,
                 decoration: InputDecoration(
                   hintText: "Partner Name",
                   errorStyle: TextStyle(color: Colors.red)
                 ),
                 validator: (value) {
                   if(value == null || value.trim().isEmpty){
                     return "Empty Field";
                   }
                     return null;
                   
                 },
               ),
             ),
             SizedBox(height: Utils.getHeight(context)/25,),
             Text("Contact Detail",style: TextStyle(fontSize: AppFontSize.s24),),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: TextFormField(
                 keyboardType: TextInputType.number,
                 controller: contactController,
                 decoration: InputDecoration(
                     hintText: "Phone Number",
                     errorStyle: TextStyle(color: Colors.red)
                 ),
                 validator: (value) {
                   if(value == null || value.trim().isEmpty){
                     return "Empty Field";
                   }
                     return null;

                 },
               ),
             ),
             SizedBox(height: Utils.getHeight(context)/25,),
             Text("Address Info",style: TextStyle(fontSize: AppFontSize.s24),),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: TextFormField(
                 controller: addressController,
                 decoration: InputDecoration(
                     hintText: "address",
                     errorStyle: TextStyle(color: Colors.red)
                 ),
                 validator: (value) {
                   if(value == null || value.trim().isEmpty){
                     return "Empty Field";
                   }
                     return null;

                 },
               ),
             ),
             SizedBox(height: Utils.getHeight(context)/25,),
             Text("Email",style: TextStyle(fontSize: AppFontSize.s24),),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: TextFormField(
                 controller: emailController,
                 decoration: InputDecoration(
                     hintText: "optional",
                     errorStyle: TextStyle(color: Colors.red)
                 ),

               ),
             ),
             SizedBox(
               height: Utils.getHeight(context)/30,
             ),
             ElevatedButton(onPressed: (){
               if(key.currentState!.validate()){
                 setState(() {
                   var data = {
                     "name" : nameController.text,
                     "number": contactController.text,
                     "address": addressController.text,
                     "email": emailController.text,
                   };
                   Api.addusers(data);
                 });
                 Navigator.push(context, MaterialPageRoute(builder: (context) => SelectCategoryModeScreen(),));
               }
             }, child: Text("Submit"))
           ],
         ),
       ),
     ),
    );
  }
}
