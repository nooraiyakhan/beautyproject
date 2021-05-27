import 'package:beautyproject/bookingpage.dart';
import 'package:beautyproject/mainpage.dart';
import 'package:beautyproject/profile.dart';
import 'package:beautyproject/welcome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'forgotpass.dart';
import 'formpage.dart';
class Aboutus extends StatefulWidget {
  @override
  _AboutusState createState() => _AboutusState();
}

class _AboutusState extends State<Aboutus> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.cyan[700],),
          backgroundColor: Colors.white,
          title: Text("About Us",style: TextStyle(color: Colors.black54,fontSize: 16,fontWeight: FontWeight.normal),),
         
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
                         showDialog(context: context,
                         builder: (BuildContext context)=>CupertinoAlertDialog(

                           title:
                            Container(
                              height: 230,width: 220,
                              child: Column(
                               
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [

                                 Container(
                                   child: Text("Sign in to your account",style: TextStyle(color: Colors.cyan[800],fontSize: 15),),
                                 ),
                                 SizedBox(height: 5,),
                                 Container(
                                   decoration: BoxDecoration(
                                     border: Border.all(width: 0.1,color: Colors.grey),
                                      borderRadius: BorderRadius.circular(3)
                                   ),
                                  
                                   child:
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(padding: EdgeInsets.only(top: 20,bottom: 20,left: 5)),
                                        Container(child: Icon(Icons.email,color: Colors.grey,size: 15,)),
                                        SizedBox(width: 5,),
                                        Container(child: Text("Email",style: TextStyle(fontSize: 15,color: Colors.grey),),)
                                      ],
                                    ),
                                  
                                   ),
                                   SizedBox(height: 5,),
                                  Container(
                                   decoration: BoxDecoration(
                                     border: Border.all(width: 0.1,color: Colors.grey),
                                        borderRadius: BorderRadius.circular(3)
                                   ),
                                   child:
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Padding(padding: EdgeInsets.only(top: 20,bottom: 20,left: 5)),
                                        Container(child: Icon(Icons.lock,color: Colors.grey,size: 15,)),
                                           SizedBox(width: 5,),
                                        Container(child: Text("Password",style: TextStyle(fontSize: 15,color: Colors.grey),),)
                                      ],
                                    ),
                                  
                                   ),
                                   SizedBox(height: 5,),
                                   MaterialButton(
                                     splashColor: Colors.white,
                                    
                                     color: Colors.cyan[800],
                                     child: Text("Submit",style: TextStyle(color: Colors.white),),
                                     onPressed: (){
                                       Navigator.push(context, 
                                       MaterialPageRoute(builder: (context)=>Profile()
                                       ));
                                     }
                                   ),
                                   SizedBox(height: 8,),
                                   GestureDetector(
                                     onTap: (){
                                       Navigator.push(context, 
                                       MaterialPageRoute(builder: (context)=>Forgotpass())
                                       );
                                     },
                                     child: Container(
                                      child: Text("Forgot password?",style:TextStyle(color: Colors.cyan[700],fontSize: 15),
                                      
                                      ),
                                     ),
                                   ),
                                    SizedBox(height: 8,),
                                   Row(mainAxisAlignment: MainAxisAlignment.start,
                                   children: [
                                     Container(
                                       child: Text("Don't have an account?",style: TextStyle(color: Colors.grey,fontSize: 12)),
                                     ),
                                     GestureDetector(
                                       onTap: (){
                                         setState(() {
                                           Navigator.push(context, 
                                           MaterialPageRoute(builder: (context)=>FormPage())
                                           );
                                         });
                                       },
                                       child: Container(
                                         child: Text("Sign up",style: TextStyle(color: Colors.cyan[700],fontSize: 15),),
                                       ),
                                     )
                                   ],
                                   
                                   )

                               ],
                           ),
                            ),
                         )
                         );
                         
                         
                       },
                       child: Row(
                    //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          
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
                   
                   
                   SizedBox(height: 20,),
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
                       child: Row(
                    //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Icon(Icons.book_online,color: Colors.grey,size: 20,),
                        ),
                        Padding(padding: EdgeInsets.only(left: 10)),
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Text("Booking",style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.normal),)
                        ),
                    ],),
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
                          decoration: BoxDecoration(
                            color: Colors.cyan.withOpacity(0.1)
                          ),
                          child: Row(

                    //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                                 Padding(padding: EdgeInsets.only(top: 20,bottom: 20,)),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Icon(Icons.bookmark,color: Colors.cyan[800],size: 20,),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text("About us",style: TextStyle(color: Colors.cyan[800],fontSize: 16,fontWeight: FontWeight.normal),)
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
      body:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(left: 20,top: 20,bottom: 5,right: 5),
            child: Text("Facebookpage link:",style: TextStyle(color: Colors.grey,fontSize: 17),),
          ),
           Container(
            padding: EdgeInsets.only(left: 20,top: 20,bottom: 5,right: 0),
            child: Text("Instagram link:",style: TextStyle(color: Colors.grey,fontSize: 17),),
          ),
        ],
      ),
    );
  }
}