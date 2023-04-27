import 'package:flutter/material.dart';
import 'package:mygrow_software_project/App_Manager/string_manager.dart';

import '../../../App_Manager/media_query_utils.dart';
import 'auto_rickshaw/all_rickshaw_info.dart';
import 'bike/full_bike_info.dart';
import 'car/select_brand_model.dart';

class DailyPassengerModeScreen extends StatefulWidget {
  const DailyPassengerModeScreen({Key? key}) : super(key: key);

  @override
  State<DailyPassengerModeScreen> createState() =>
      _DailyPassengerModeScreenState();
}

class _DailyPassengerModeScreenState extends State<DailyPassengerModeScreen> {

   final _formKey = GlobalKey<FormState>();


  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  String selectedVehicle = "";
  String email = "";
  String address = "";
  int? phoneNumber;

  bool isOpen  = false;
  String selectOption = "Select Option";
  List <String> listItem = ["Bike", "Car", "Auto Rickshaw"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Passenger/Daily"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20),
          child: Form(
              key: _formKey,
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                InkWell(
                  onTap: (){
                    isOpen = !isOpen;
                    setState(() {

                    });
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300
                    ),
                    child: Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(selectOption,style: TextStyle(fontWeight: FontWeight.bold,fontSize: AppFontSize.s18),),
                          Icon(isOpen? Icons.keyboard_arrow_up: Icons.keyboard_arrow_down)
                        ],
                      ),
                    )
                  ),
                ),
                if(isOpen)
                ListView(
                  primary: true,
                  shrinkWrap: true,
                  children: listItem.map((e) => Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade300
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: (){
                          selectOption = e;
                          isOpen =  false;
                          setState(() {
                            selectedVehicle = selectOption;
                          });
                        },
                          child: Text(e,style: TextStyle(fontSize: AppFontSize.s18),)),
                    ),
                  )).toList(),
                ),
                SizedBox(height: Utils.getHeight(context)/20,),
                TextFormField(
                  controller: emailController,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    errorStyle: TextStyle(color: Colors.red,fontSize: AppFontSize.s18,fontWeight: FontWeight.w600),
                    hintStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: AppFontSize.s18),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                  validator: (value) {
                    if(value!.isEmpty){
                      return "Please Enter Email";
                    }else if(!value.contains("@")){
                      return "Please Enter Valid Email";
                    }else{
                      return null;
                    }
                  },
                ),
                SizedBox(height: Utils.getHeight(context)/20,),
                TextFormField(
                  controller: addressController,
                  decoration: InputDecoration(
                    hintText: 'Address',
                    hintStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: AppFontSize.s18),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                  validator: (value) {
                    if(value!.isEmpty){
                      return "Please Enter Address";
                    }else{
                      return null;
                    }
                  },
                ),
                SizedBox(height: Utils.getHeight(context)/20,),
                TextFormField(
                  controller: phoneController,
                  decoration: InputDecoration(
                    hintText: 'Phone Number',
                    hintStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: AppFontSize.s18),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                    validator: (value) {
                      RegExp regExp = new RegExp(r'^[0-9]+$');
                      if (value!.isEmpty) {
                        return "Please enter a phoneNumber";
                      } else if (!regExp.hasMatch(value)) {
                        return "Please enter only numbers";
                      }
                      return null;
                    },
                ),
                SizedBox(height: Utils.getHeight(context)/20,),
                ElevatedButton(onPressed: (){
                 if( _formKey.currentState!.validate()){
                   setState(() {
                     email = emailController.text.trim();
                     address = addressController.text;

                   });
                   print(email.toString());
                   print(address.toString());
                   print(selectedVehicle.toString());

                   if (selectedVehicle.isNotEmpty){
                     if(selectedVehicle == "Car"){
                       Navigator.push(context, MaterialPageRoute(builder: (context) => const CarModelAndBrand(),));
                     }
                     else if(selectedVehicle == "Bike"){
                       Navigator.push(context, MaterialPageRoute(builder: (context) => const FullBikeInfo(),));
                     }
                     else{
                       Navigator.push(context, MaterialPageRoute(builder: (context) => const FullRickShawInfo(),));
                     }

                   }
                 }


                }, child: Text("Submit"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
