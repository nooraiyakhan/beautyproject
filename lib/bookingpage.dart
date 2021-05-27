

import 'package:beautyproject/aboutus.dart';
import 'package:beautyproject/loginpage.dart';
import 'package:beautyproject/profile.dart';
import 'package:beautyproject/welcome.dart';
import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'mainpage.dart';
class BookingPage extends StatefulWidget {
    Widget build(BuildContext context) {
    return MaterialApp(
      home: Slider(value: null, onChanged: null),
      debugShowCheckedModeBanner: false,
    );
  }

  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  DateTime _dateTime=DateTime.now();
  @override
 
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.cyan[700], ),
          backgroundColor: Colors.white,
          title: Text("Booking",style: TextStyle(color: Colors.black54,fontSize: 16,fontWeight: FontWeight.normal),),
      ),
      drawer: Drawer(
         child: SafeArea(
           child: SingleChildScrollView(
             physics: BouncingScrollPhysics(),
             child: Container(
               margin: EdgeInsets.only(
                 bottom: 20,),
                 child: Column(
                   children: [
                     Container(
                       width: double.infinity,
                       padding: EdgeInsets.all(20),
                       color: Colors.transparent,
                       child: Container(
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Container(
                               height: 60,
                               width: 60,
                               child: ClipRRect(
                                 borderRadius: BorderRadius.circular(40.0),
                                 child: Image.asset("assets/profile.jpg"),

                               ),
                             ),
                             SizedBox(height: 10,),
                             Container(
                               child: Column(
                              //   crossAxisAlignment: CrossAxisAlignment.center,
                                 children: [
                                   Container(
                                     padding: EdgeInsets.only(right: 76),
                                     child: Text("Hello!",
                                     style: TextStyle(color: Colors.grey,fontSize: 15),
                                     ),
                                   ),
                                   Container(
                                     child: Text("Nooraiya Khan",
                                     style: TextStyle(color: Colors.black,fontSize: 18),
                                     
                                     ),

                                   )
                                 ],
                               ),
                             )
                           ],
                         ),
                       ),
                     ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.cyan[700],

                          ),
                          margin: EdgeInsets.only(left: 20),
                          padding: EdgeInsets.only(left: 25,right: 25,top:7,bottom: 7),
                          child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 14),),
                        ),
                         Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.cyan[700],

                          ),
                          margin: EdgeInsets.only(left: 20),
                          padding: EdgeInsets.only(left: 30,right: 30,top: 7,bottom: 7),
                          child: Text("Register",style: TextStyle(color: Colors.white,fontSize: 14),),
                        ),
                      ],
                    ),
                    SizedBox(height:15,),
                    Divider(),
                    Container(
                      margin: EdgeInsets.only(right: 20),
                  
                      child: 
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, 
                          MaterialPageRoute(builder: (context)=>MainPage())
                          );
                        },
                        child: Row(
                    
                        //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                          
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Icon(Icons.home,color: Colors.grey,size: 20,),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text("Home",style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.normal),)
                          ),
                        ],),
                      ),
                    ),
                    SizedBox(height: 20,),
                     GestureDetector(
                       onTap: (){
                         Navigator.push(context, 
                         MaterialPageRoute(builder: (context)=>Profile())
                         

                         );
                       },
                       child:
                        Container(
                          margin: EdgeInsets.only(right: 20),
                         
                          child: GestureDetector(
                            onTap: (){
                              Navigator.push(context, 
                              MaterialPageRoute(builder: (context)=>Profile())
                              
                              );
                            },
                            child: Row(
                    //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Padding(padding: EdgeInsets.only(top: 20,bottom: 20,)),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Icon(Icons.person,color: Colors.grey,size: 20,),
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Text("Profile",style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.normal),)
                            ),
                    ],),
                          ),
                        ),
                     ),SizedBox(height: 20,),
                     GestureDetector(
                       onTap: (){
                           showDialog(
                           context: context,
                           builder: (BuildContext context)=>CupertinoAlertDialog(
                             title: Text("Choose your service first",style: TextStyle(color: Colors.grey,fontSize: 15),),
                             actions: [
                               CupertinoDialogAction(isDefaultAction: true,
                              
                                 child: Text("OK",style: TextStyle(color: Colors.cyan[700]),),
                                 onPressed: (){
                                   print("OK");
                                     Navigator.push(context, 
                         MaterialPageRoute(builder: (context)=>MainPage())
                         );
                                 },
                                 )
                             ],
                           )
                           );
                       },
                       child:
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.cyan.withOpacity(0.1)
                          ),
                          child: Row(
                    //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(padding: EdgeInsets.only(top: 20,bottom: 20)),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Icon(Icons.book_online,color: Colors.cyan[700],size: 20,),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text("Booking",style: TextStyle(color: Colors.cyan[700],fontSize: 16,fontWeight: FontWeight.normal),)
                          ),
                    ],),
                        ),
                     ),
                    SizedBox(height: 20,),
                     GestureDetector(
                       onTap: (){
                         Navigator.push(context, 
                          MaterialPageRoute(builder: (context)=>Aboutus())
                         
                         );
                       },
                       child:
                        Container(
                        
                          child: Row(

                    //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Icon(Icons.bookmark,color: Colors.grey,size: 20,),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text("About us",style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.normal),)
                          ),
                    ],),
                        ),
                     ),
                    SizedBox(height: 70,),
                    
                    Container(
                      
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.cyan[700],

                          ),
                          margin: EdgeInsets.only(right:160),
                          padding: EdgeInsets.only(left: 30,right: 30,top: 7,bottom: 7),
                          child: Text("Logout",style: TextStyle(color: Colors.white,fontSize: 14),),
                        ),
                   ],
                 ),
             ),
           )
         ),

      ),
     body: 
     SingleChildScrollView(
       physics: BouncingScrollPhysics(),
       child:
        Column(
          children: [
            Container(
            margin: EdgeInsets.only(top: 30),
              child: Text("Select your date and time",style: TextStyle(fontSize: 15,color: Colors.cyan[700]),),
            ),
            SizedBox(height: 50,),
           
            SizedBox(
              height:100,
              
              child: CupertinoDatePicker(
                
               initialDateTime: _dateTime,
               minimumYear: 2021,
               backgroundColor: Colors.white,
               onDateTimeChanged: (dateTime){
                 print(dateTime);
                 setState(() {
                   _dateTime=dateTime;
                 });
               }),
            ),
            Container(
              width: 220,
              height: 45,
              margin: EdgeInsets.only(top: 40),
              child: MaterialButton(
                splashColor: Colors.white,
                color: Colors.cyan[700],
                child: Text("Confirm",style: TextStyle(color: Colors.white),),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                onPressed: (){
                  showDialog(context: context,
                  builder:(_)=>AlertDialog(
                    title: Text('You will get an sms or call content shortly.The date and time you selected',style: TextStyle(color: Colors.cyan[800],fontSize: 15),),
                    content: Text('${_dateTime.day}/${_dateTime.month}/${_dateTime.year}\n${_dateTime.hour}:${_dateTime.minute}',
                  
                    ),
                  
                  ),
                
                  );
                }
              ),
            )
          ],
        ),
     ),
      
    );
  }
}