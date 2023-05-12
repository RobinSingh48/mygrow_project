

import 'package:flutter/material.dart';


import '../App_Manager/media_query_utils.dart';
import '../App_Manager/string_manager.dart';
import '../widgets/category_widgets.dart';
import '../widgets/crane_bottom_custom_container.dart';
import '../widgets/passenger_screen_clickable_containers.dart';


class PassengerScreen extends StatefulWidget {
  const PassengerScreen({Key? key}) : super(key: key);

  @override
  State<PassengerScreen> createState() => _PassengerScreenState();
}

int? selectedIcon = 0;
class _PassengerScreenState extends State<PassengerScreen> {

  bool bike = false;
  bool car = true;




  TextEditingController pickupController  = TextEditingController();
  TextEditingController destinationController = TextEditingController();
  TextEditingController priceController = TextEditingController();
  TextEditingController instruction = TextEditingController();


  String? iconValue;


  void onIconClicked(int index) {
    setState(() {
      selectedIcon = index;

    });
    print(selectedIcon);
    if(selectedIndex==0){
      iconValue = "car";

    }else if(selectedIcon==1){
      iconValue = "auto";

    }else if(selectedIcon==2){
      iconValue = "bike";
    }else if(selectedIcon==3){
      iconValue = "outstation";
    }else if(selectedIcon==4){
      iconValue = "parcel";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: (car)?Utils.getHeight(context)/0.90:Utils.getHeight(context)/1.7,
                child: Stack(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(top: Utils.getHeight(context)/16),
                      child: Container(
                        height: Utils.getHeight(context)/0.95,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15)
                        ),
                      ),
                    ),
                    ClickableContainersRow(),
                    Padding(
                      padding: EdgeInsets.only(top: Utils.getHeight(context)/12.80),
                      child: Container(
                        color: Colors.white,
                        height: (car)?Utils.getHeight(context)/7.0:Utils.getHeight(context)/8,
                        child: Column(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(top: Utils.getHeight(context)/50,left: Utils.getHeight(context)/50,right: Utils.getHeight(context)/50),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: (){

                                        setState(() {
                                          onIconClicked(0);
                                          bike = false;
                                          car = true;
                                        });
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          border:selectedIcon == 0 ? Border.all(color: Colors.black):null,

                                        ),
                                          height: Utils.getHeight(context)/10,
                                          child: Image.asset("Images/passenger_icons/car.png",fit: BoxFit.cover,)
                                      ),
                                    ),
                                    SizedBox(width: Utils.getHeight(context)/50,),
                                    InkWell(

                                      onTap: (){

                                        setState(() {
                                          onIconClicked(1);
                                          bike = true;
                                          car = false;
                                        });
                                      },
                                      child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            border:selectedIcon == 1 ? Border.all(color: Colors.black):null,

                                          ),
                                          height: Utils.getHeight(context)/10,
                                          child: Image.asset("Images/passenger_icons/auto.png")
                                      ),
                                    ),
                                    SizedBox(width: Utils.getHeight(context)/50,),
                                    InkWell(
                                      onTap: (){
                                        onIconClicked(2);
                                        setState(() {
                                          bike = true;
                                          car = false;

                                        });
                                      },
                                      child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            border:selectedIcon == 2 ? Border.all(color: Colors.black):null,

                                          ),
                                          height: Utils.getHeight(context)/10,
                                          child: Image.asset("Images/passenger_icons/bike.png")
                                      ),
                                    ),
                                    SizedBox(width: Utils.getHeight(context)/50,),
                                    InkWell(
                                      onTap: (){
                                        onIconClicked(3);
                                        setState(() {
                                         bike = false;
                                         car = true;

                                        });
                                      },
                                      child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            border: selectedIcon == 3 ? Border.all(color: Colors.black):null,

                                          ),
                                          height: Utils.getHeight(context)/10,
                                          child: Image.asset("Images/passenger_icons/outstation.png")
                                      ),
                                    ),
                                    SizedBox(width: Utils.getHeight(context)/50,),
                                    InkWell(
                                      onTap: (){
                                        onIconClicked(4);
                                        setState(() {
                                          bike = false;
                                          car = true;
                                        });
                                      },
                                      child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(10),
                                            border:selectedIcon == 4 ? Border.all(color: Colors.black):null,

                                          ),
                                          height: Utils.getHeight(context)/10,
                                          child: Image.asset("Images/passenger_icons/parcel.png")
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),

                          ],
                        )
                      ),
                    ),
                    if(car)
                    Padding(
                      padding:  EdgeInsets.only(top: Utils.getWidth(context)/2.60),
                      child: Container(

                          height: Utils.getHeight(context)/10,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: ClickableContainersRowPassenger()
                      ),
                    ),
                    if(car)
                    Padding(
                      padding:  EdgeInsets.only(top: Utils.getWidth(context)/1.76),
                      child: Container(
                          color: Colors.white,
                          height: 70,
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text("Cabin :",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),),
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.blue,
                                    radius: 8,
                                  ),
                                  SizedBox(width: 10,),
                                  Text("AC",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400))
                                ],
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.blue,
                                    radius: 8,
                                  ),
                                  SizedBox(width: 10,),
                                  Text("Non AC",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400))
                                ],
                              ),
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.blue,
                                    radius: 8,
                                  ),
                                  SizedBox(width: 10,),
                                  Text("Any",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400))
                                ],
                              ),

                            ],
                          )
                      ),
                    ),
                    if(car)
                    Padding(
                      padding:  EdgeInsets.only(top: Utils.getWidth(context)/1.32),
                      child: Container(
                          color: Colors.white,
                          height: 60,
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("vehicle type :",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 24),),
                              SizedBox(width: 5,),
                              Text("Any Micro Sedan SUV",style: TextStyle(fontSize: 16),),
                              Text("Luxury",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w400),)
                            ],
                          )
                      ),
                    ),
                    if(car)
                    Padding(
                      padding:  EdgeInsets.only(top: Utils.getWidth(context)/1.08),
                      child: Container(
                          color: Colors.white,
                          height: 70,
                          width: double.infinity,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black),

                                ),
                                margin: EdgeInsets.all(4.0),
                                height: 50.0,
                                width: 100.0,
                                child: Center(child: Text("Ride Share",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),

                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.black),

                                ),
                                margin: EdgeInsets.all(4.0),
                                height: 50.0,
                                width: 100.0,
                                child: Center(child: Text("Enter Cabin",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),

                              ),
                              Center(child: Text("For Car Option Only",style: TextStyle(color: Colors.red),),)
                            ],
                          )
                      ),
                    ),
                    if(car)
                    Padding(
                      padding:  EdgeInsets.only(top: Utils.getWidth(context)/0.89),
                      child: Container(
                          color: Colors.white,
                          height: 70,
                          width: double.infinity,
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(

                                  height: 50.0,
                                  width: 200.0,
                                  child: Center(child: Text("Numbers of Passenger :",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),

                                ),
                              ),


                              Center(child: Text("For Ride Share Option Only",style: TextStyle(color: Colors.red),),)
                            ],
                          )
                      ),
                    ),

                    Padding(
                      padding: (car)? EdgeInsets.only(top: Utils.getHeight(context)/1.25,bottom: Utils.getHeight(context)/99): EdgeInsets.only(top: Utils.getHeight(context)/4.2,bottom: Utils.getHeight(context)/99),
                      child: Container(
                        color: Colors.white,
                        height: Utils.getHeight(context)/1,
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Column(
                            children: [
                               Row(
                                 children: [
                                   Text("Pick up",style: TextStyle(fontSize: AppFontSize.s18, fontWeight: FontWeight.bold),),
                                 Expanded(
                                   child: TextFormField(
                                     controller: pickupController,
                                     decoration: InputDecoration(
                                       hintText: "Your Location",
                                       border: UnderlineInputBorder(
                                         borderSide: BorderSide(color: Colors.black,width: 5),
                                       )
                                     ),
                               ),
                                 )
                                 ],
                               ),
                              Row(
                                children: [
                                  Text("Destination",style: TextStyle(fontSize: AppFontSize.s18, fontWeight: FontWeight.bold),),
                                  Expanded(
                                    child: TextFormField(
                                      controller: destinationController,
                                      decoration: InputDecoration(
                                          hintText: "Your Destination",
                                          border: UnderlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black,width: 5),
                                          )
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Your Price",style: TextStyle(fontSize: AppFontSize.s18, fontWeight: FontWeight.bold),),
                                  Expanded(
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      controller: pickupController,
                                      decoration: InputDecoration(
                                          hintText: "optional",
                                          border: UnderlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black,width: 5),
                                          )
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text("Instruction if Any*",style: TextStyle(fontSize: AppFontSize.s18, fontWeight: FontWeight.bold),),
                                  Expanded(
                                    child: TextFormField(
                                      controller: pickupController,
                                      decoration: InputDecoration(
                                          hintText: "optional",
                                          border: UnderlineInputBorder(
                                            borderSide: BorderSide(color: Colors.black,width: 5),
                                          )
                                      ),
                                    ),
                                  )
                                ],
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: Utils.getHeight(context)/95,),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.blue.shade100,
                  border: Border.all(color: Colors.black),
                ),
                child: Center(child: Text("Find Driver/Vehicle",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),),
              ),
              SizedBox(height: 4,),
              Container(
                height: 40,
                width: double.infinity,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black)
                ),
                child: ContainerRow(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
