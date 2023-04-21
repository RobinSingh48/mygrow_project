import 'package:flutter/material.dart';


class EmailScreen extends StatelessWidget {
  const EmailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(child: Text("Welcome to MyGrow Software",style: TextStyle(color: Colors.white,fontSize: MediaQuery.of(context).size.width/20,fontWeight: FontWeight.bold),)),
              ),
              Container(
                height: MediaQuery.of(context).size.height/1.4,
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width/10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Name',
                          hintStyle: TextStyle(color: Colors.white),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Surname',
                          hintStyle: TextStyle(color: Colors.white),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: TextStyle(color: Colors.white),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height/10,),
              SizedBox(
                  width: MediaQuery.of(context).size.width/1.2,
                  height: MediaQuery.of(context).size.height/12,
                  child: ElevatedButton(onPressed: (){}, child: Text("Next",style: TextStyle(fontSize: MediaQuery.of(context).size.height/25,color: Colors.black),),style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.green),),))
            ],
          ),
        ),
      ),
    );
  }
}
