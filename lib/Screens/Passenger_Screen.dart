import 'package:flutter/material.dart';


import '../widgets/category_widgets.dart';
import '../widgets/crane_bottom_custom_container.dart';
import '../widgets/passenger_screen_clickable_containers.dart';
import 'cranes.dart';

class PassengerScreen extends StatelessWidget {
  const PassengerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 550,
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Container(
                        height: 550,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(15)
                        ),
                      ),
                    ),
                    ClickableContainersRow(),
                    Padding(
                      padding: const EdgeInsets.only(top: 54),
                      child: Container(
                        color: Colors.white,
                        height: 50,
                        width: double.infinity,
                        child: Center(
                          child: Text("Out Station/Function",style: TextStyle(color: Colors.red),),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 108),
                      child: Container(

                          height: 70,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: ClickableContainersRowPassenger()
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 182),
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

                    Padding(
                      padding: const EdgeInsets.only(top: 256),
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

                    Padding(
                      padding: const EdgeInsets.only(top: 320),
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

                    Padding(
                      padding: const EdgeInsets.only(top: 395,bottom: 10),
                      child: Container(
                        color: Colors.white,
                        height: 195,
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Column(
                            children: [
                              Expanded(child: Custom_TextField(text: "Pick up",function: (){},)),
                              Expanded(child: Custom_TextField(text: "Destination",function: (){},)),
                              Expanded(child: Custom_TextField(text: "Your Price",function: (){},)),
                              Expanded(child: Custom_TextField(text: "Instruction if Any*",function: (){},)),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5,),
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
