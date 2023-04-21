import 'package:flutter/material.dart';

import '../widgets/category_widgets.dart';
import '../widgets/crane_bottom_custom_container.dart';
import '../widgets/goodsscreen_clickable_container.dart';
import '../widgets/passenger_screen_clickable_containers.dart';
import 'Passenger_Screen.dart';
import 'cranes.dart';

class GoodsScreen extends StatefulWidget {
  const GoodsScreen({Key? key}) : super(key: key);

  @override
  State<GoodsScreen> createState() => _GoodsScreenState();
}

class _GoodsScreenState extends State<GoodsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 610,
                  child: Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 40),
                        child: Container(
                          height: 610,
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
                          height: 70,
                          width: double.infinity,
                          child: Center(
                            child: Text("Auto,Ace,407/Pickup",style: TextStyle(color: Colors.red),),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 130),
                        child: Container(

                            height: 70,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("Body Type :",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                                ClickableContainersRowGoods()
                              ],
                            )
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 220),
                        child: Container(
                            color: Colors.white,
                            height: 70,
                            width: double.infinity,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text("Material type :",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w400),),

                                ],
                              ),
                            )
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(top: 320,bottom: 30),
                        child: Container(
                          color: Colors.white,
                          height: 180,
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
                      Padding(
                        padding:  EdgeInsets.only(top: 430),
                        child: Center(
                          child: ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(Colors.lightGreen)
                              ),
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => PassengerScreen(),));
                              }, child: Text("Submit",style: TextStyle(fontSize: 18),)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 550),
                        child: Container(
                          width: double.infinity,
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue.shade100,
                            border: Border.all(color: Colors.black),
                          ),
                          child: Center(child: Text("Find Driver/Vehicle",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),),
                        ),
                      ),
                    ],
                  ),
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
      ),
    );
  }
}
