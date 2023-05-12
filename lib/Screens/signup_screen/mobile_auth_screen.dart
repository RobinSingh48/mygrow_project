import 'dart:convert';
import 'dart:math';
import 'package:http/http.dart'as http;
import 'package:flutter/material.dart';
import 'package:mygrow_software_project/Screens/signup_screen/verify_otp.dart';


class MobileAuthenticationScreen extends StatefulWidget {
  const MobileAuthenticationScreen({Key? key}) : super(key: key);

  @override
  State<MobileAuthenticationScreen> createState() => _MobileAuthenticationScreenState();
}

class _MobileAuthenticationScreenState extends State<MobileAuthenticationScreen> {



  TextEditingController _phoneController = TextEditingController();

  String? _phoneNumber;

  late var otp;

  int generateOTP() {
    Random random = new Random();
    return (1000 + random.nextInt(9000));
  }


  Future<Map<String, dynamic>> sendSMS() async {
    final url = 'https://smsapi.edumarcsms.com/api/v1/sendsms';
    final headers = {
      'Content-Type': 'application/json',
      'apikey': 'cjlpehwde000ugdquxea8ta5u',
    };
    otp = generateOTP();
    final body = json.encode({
      'number': [_phoneNumber],
      'message': 'Your ${_phoneNumber} (Powered by Edumarc Technologies) OTP for verification is: ${otp}. Code is valid for 2 minutes. OTP is confidential, refrain from sharing it with anyone.',
      'senderId': 'EDUMRC',
      'templateId': '1707167291733893032',
    });

    final response = await http.post(Uri.parse(url), headers: headers, body: body);

    if (response.statusCode == 200) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => VerifyOTP(otp: otp),));
      return {'otp': otp};

    } else {
      // Send SMS failed, throw an exception or return an error message
      throw Exception('Failed to send SMS: ${response.body}');
    }
  }



  bool _validatePhoneNumber(String value) {

    String digitsOnly = value.replaceAll(RegExp(r'[^0-9]'), '');

    if (digitsOnly.length == 10) {

      _phoneNumber = digitsOnly;
      return true;
    } else {
      _phoneNumber = null;
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: SingleChildScrollView(
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.height / 18),
                  child: Center(
                      child: Text(
                        "Login With Mobile Number",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: MediaQuery.of(context).size.width / 15,
                            fontWeight: FontWeight.bold),
                      )),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 1.4,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width / 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          controller: _phoneController,
                          keyboardType: TextInputType.phone,
                          autofocus: false,
                          maxLength: 10,
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              label: Text("Phone Number",style: TextStyle(color: Colors.white),),
                              prefixText: "+91  ",
                              prefixStyle: TextStyle(color: Colors.white),
                              hintText: "Enter Your Phone Number",
                              errorStyle: TextStyle(color: Colors.red, fontSize: 18),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30),
                                  borderSide: BorderSide(color: Colors.grey)
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)
                              ),
                              enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey))
                          ),
                          onChanged: (value) {
                            setState(() {
                              _validatePhoneNumber(value);
                            });
                          },
                          validator: (value) {
                            if (_validatePhoneNumber(value!)) {
                              return null; // Input is valid
                            } else {
                              return 'Please enter a 10 digit number';
                            }
                          },
                        ),
                        if (_phoneNumber != null && _phoneNumber?.length == 10)

                          SizedBox(
                            child: ElevatedButton(
                              style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.grey,)),
                              child: Text('Send Otp',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                              onPressed: _phoneNumber == null ? null : () {
                               sendSMS();
                              },
                            ),
                          )




                      ],
                    ),
                  ),
                )
              ]),
            )));
  }
}
