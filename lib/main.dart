import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mygrow_software_project/Map_Category/Goods_Mobility_Category/PackerAndMove/company_details.dart';

import 'package:mygrow_software_project/info_handler/info_app.dart';

import 'package:provider/provider.dart';

import 'Screens/cranes.dart';
import 'Screens/signup_screen/mobile_auth_screen.dart';
import 'firebase_options.dart';


void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppInfo(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MobileAuthenticationScreen(),
      ),
    );
  }
}
