import 'package:flutter/material.dart';

import '../App_Manager/media_query_utils.dart';
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
int? selectedGoodIcon = 0;
class _GoodsScreenState extends State<GoodsScreen> {

  String? goodIconValue;

  void onGoodIconClicked(int index) {
    setState(() {
      selectedGoodIcon = index;

    });
    print(selectedCraneIcon);
    if(selectedIndex==0){
      goodIconValue = "car";

    }else if(selectedCraneIcon==1){
      goodIconValue = "auto";

    }else if(selectedCraneIcon==2){
      goodIconValue = "bike";
    }else if(selectedCraneIcon==3){
      goodIconValue = "outstation";
    }else if(selectedCraneIcon==4){
      goodIconValue = "parcel";
    }else if(selectedCraneIcon==5){
      goodIconValue = "parcel";
    }else if(selectedCraneIcon==6){
      goodIconValue = "parcel";
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: Utils.getHeight(context)/1.15,
                  child: Stack(
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(top: Utils.getHeight(context)/16),
                        child: Container(
                          height: Utils.getHeight(context)/1.35,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(15)
                          ),
                        ),
                      ),
                      ClickableContainersRow(),
                      Padding(
                        padding:  EdgeInsets.only(top: Utils.getHeight(context)/12.80),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Container(
                              color: Colors.white,
                              height: Utils.getHeight(context)/6.6,

                              child: Column(
                                children: [
                                  Padding(
                                    padding:  EdgeInsets.only(top: Utils.getHeight(context)/50,left: Utils.getHeight(context)/50,right: Utils.getHeight(context)/50),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        GestureDetector(
                                          onTap: (){
                                            onGoodIconClicked(0);
                                          },
                                          child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                border:selectedGoodIcon == 0 ? Border.all(color: Colors.black):null,

                                              ),
                                              height: Utils.getHeight(context)/10,
                                              child: Image.asset("Images/good_icons/e_rickshaw.png")
                                          ),
                                        ),
                                        SizedBox(width: Utils.getHeight(context)/50,),
                                        GestureDetector(
                                          onTap: (){onGoodIconClicked(1);},
                                          child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                border:selectedGoodIcon == 1 ? Border.all(color: Colors.black):null,

                                              ),
                                              height: Utils.getHeight(context)/10,
                                              child: Image.asset("Images/good_icons/tata 407.png")
                                          ),
                                        ),
                                        SizedBox(width: Utils.getHeight(context)/50,),
                                        GestureDetector(
                                          onTap: (){onGoodIconClicked(2);},
                                          child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                border:selectedGoodIcon == 2 ? Border.all(color: Colors.black):null,

                                              ),
                                              height: Utils.getHeight(context)/10,
                                              child: Image.asset("Images/passenger_icons/parcel.png")
                                          ),
                                        ),
                                        SizedBox(width: Utils.getHeight(context)/50,),
                                        GestureDetector(
                                          onTap: (){onGoodIconClicked(3);},
                                          child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                border:selectedGoodIcon == 3 ? Border.all(color: Colors.black):null,

                                              ),
                                              height: Utils.getHeight(context)/10,
                                              child: Image.asset("Images/good_icons/small.png")
                                          ),
                                        ),
                                        SizedBox(width: Utils.getHeight(context)/50,),
                                        GestureDetector(
                                          onTap: (){onGoodIconClicked(4);},
                                          child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                border:selectedGoodIcon == 4 ? Border.all(color: Colors.black):null,

                                              ),
                                              height: Utils.getHeight(context)/10,
                                              child: Image.asset("Images/good_icons/medium.png")
                                          ),
                                        ),
                                        SizedBox(width: Utils.getHeight(context)/50,),
                                        GestureDetector(
                                          onTap: (){onGoodIconClicked(5);},
                                          child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                border:selectedGoodIcon == 5 ? Border.all(color: Colors.black):null,

                                              ),
                                              height: Utils.getHeight(context)/10,
                                              child: Image.asset("Images/good_icons/large.png")
                                          ),
                                        ),
                                        SizedBox(width: Utils.getHeight(context)/50,),
                                        GestureDetector(
                                          onTap: (){onGoodIconClicked(6);},
                                          child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                border:selectedGoodIcon == 6 ? Border.all(color: Colors.black):null,

                                              ),
                                              height: Utils.getHeight(context)/10,
                                              child: Image.asset("Images/good_icons/extra large.png")
                                          ),
                                        ),
                                        SizedBox(width: Utils.getHeight(context)/50,),
                                      ],
                                    ),
                                  ),

                                ],
                              )
                          ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(top: Utils.getHeight(context)/4),
                        child: Container(

                            height: Utils.getHeight(context)/10,
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
                        padding:  EdgeInsets.only(top: Utils.getHeight(context)/2.75),
                        child: Container(
                            color: Colors.white,
                            height: Utils.getHeight(context)/12,
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
                        padding:  EdgeInsets.only(top: Utils.getHeight(context)/2.15,bottom: 30),
                        child: Container(
                          color: Colors.white,
                          height: Utils.getHeight(context)/4.5,
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
                        padding:  EdgeInsets.only(top: Utils.getWidth(context)/1.05),
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
                        padding:  EdgeInsets.only(top: Utils.getHeight(context)/1.32),
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
