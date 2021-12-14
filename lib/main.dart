import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:calowrie/shared/shared.dart';
import 'package:calowrie/views/pages/pages.dart';

void enablePlatformOverrideForDekstop(){
  if(!kIsWeb && (Platform.isMacOS || Platform.isWindows ||Platform.isLinux)){
    debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  }
}
void main() async{
  enablePlatformOverrideForDekstop();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Calowrie",
      theme: MyTheme.myTheme(),
      initialRoute: '/',
      routes: {
         '/': (context) => const SplashScreen(),
         SplashScreen.routeName: (context) => const SplashScreen(),
        //  SplashPages.routeName: (context) => const SplashPages(),
         Login.routeName: (context) => const Login(),
         Register.routeName: (context) => const Register(),
         HomePageWidget.routeName: (context) => const HomePageWidget(),


      },
    );
  }
}
