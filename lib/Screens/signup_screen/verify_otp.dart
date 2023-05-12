
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:mygrow_software_project/Screens/Passenger_Screen.dart';


import 'package:pin_code_text_field/pin_code_text_field.dart';

import '../cranes.dart';

class VerifyOTP extends StatefulWidget {

  final int otp;
  VerifyOTP({Key? key, required this.otp}) : super(key: key);

  @override
  State<VerifyOTP> createState() => _VerifyOTPState();
}

class _VerifyOTPState extends State<VerifyOTP> {
  

  TextEditingController otpController = TextEditingController();

  var otpCode;
 late DatabaseReference databaseReference;





  validateOTP(int otp) {
    print("${widget.otp}" == "${otpController.text}");

    if ("${widget.otp}" == "${otpController.text}") {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => Cranes(),));
    } else {
      print("failed");
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: MediaQuery
                      .of(context)
                      .size
                      .height / 10),
                  child: Icon(Icons.lock, color: Colors.black, size: MediaQuery
                      .of(context)
                      .size
                      .height / 5,),
                ),
                SizedBox(height: MediaQuery
                    .of(context)
                    .size
                    .height / 30,),
                Text("Enter OTP", style: TextStyle(color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),),
                SizedBox(height: MediaQuery
                    .of(context)
                    .size
                    .height / 30,),
                PinCodeTextField(
                  maxLength: 4,
                  controller: otpController,
                  defaultBorderColor: Colors.grey.shade400,
                  keyboardType: TextInputType.text,
                  pinBoxHeight: MediaQuery
                      .of(context)
                      .size
                      .height / 15,
                  pinBoxWidth: MediaQuery
                      .of(context)
                      .size
                      .height / 20,
                  pinTextStyle: TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                  errorBorderColor: Colors.red,

                ),
                SizedBox(height: MediaQuery
                    .of(context)
                    .size
                    .height / 30,),
                GestureDetector(
                  onTap: () {
                    if (otpController != null) {
                      setState(() {
                        otpCode = otpController.text.trim();
                      });
                      validateOTP(widget.otp);
                    }
                  },
                  child: Container(
                    height: MediaQuery
                        .of(context)
                        .size
                        .height / 15,
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 3.5,
                    decoration: BoxDecoration(
                      color: Colors.black38,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        "Verify", style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),),
                    ),
                  ),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}