import 'dart:convert';

import 'package:http/http.dart'as http;

class Api{
  static const baseUrl = "http://192.168.0.100/api/data/partnerdata";

  static addusers(Map userdata)async{

    try{
      final res =  await http.post(Uri.parse("${baseUrl}"),body: userdata);

      if(res.statusCode == 200){
        var data = jsonDecode(res.body.toString());
        print(data);
      }else{
        print("Failed to get response");
      }
    }catch(e){
      print(e.toString());
    }
  }

}