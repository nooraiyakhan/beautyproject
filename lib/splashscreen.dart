import 'dart:async';
import 'package:beautyproject/mainpage.dart';
import 'package:beautyproject/welcome.dart';
import 'package:flutter/material.dart';
class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState(){
    super.initState();
    loadTimer();//to call timer function
  }
  
  Future<Timer>loadTimer()async{
    return new Timer(Duration(seconds: 3), onDoneLoading);
  }
  onDoneLoading()async{
    Navigator.pop(context);
    Navigator.push(context, MaterialPageRoute(builder:(context) =>MainPage()));
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        
        child:Center(
          child:
           Container(
           //  height: 100,
             margin: EdgeInsets.only(left: 10,right: 10),

             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Padding(padding: EdgeInsets.only(left: 10,right: 10,top: 0,bottom: 0)),
          Container(   
          child: Image.asset("assets/splash.jpg",height: 90,width: 90,)),
          Container(
            padding: EdgeInsets.only(left: 10,right: 10,bottom: 5,top: 10),
          //   padding: EdgeInsets.only(bottom: 20),
              child: Text("Henna And Makeover By.Sharmin",style: TextStyle(color: Colors.cyan[700],fontSize: 19,fontWeight: FontWeight.w600),
              ),),
              
          ],),
           ) , ) ),
    );
  }
}