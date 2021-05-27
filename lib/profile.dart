import 'package:beautyproject/aboutus.dart';
import 'package:beautyproject/bookingpage.dart';
import 'package:beautyproject/editprofile.dart';
import 'package:beautyproject/mainpage.dart';
import 'package:beautyproject/welcome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.cyan[700]),
          backgroundColor: Colors.white,
          title: Text("Profile",style: TextStyle(color: Colors.black54,fontSize: 16,fontWeight: FontWeight.normal),),
          actions: [
            IconButton(
              icon: Icon(Icons.edit,color: Colors.cyan[700],)
            , onPressed: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context)=>Editprofile())
              );
            })
          ],
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
                         // margin: EdgeInsets.only(right: 20),
                           decoration: BoxDecoration(
                        color: Colors.cyan.withOpacity(0.1),
                      
                      ),
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
                              child: Icon(Icons.person,color: Colors.cyan[700],size: 20,),
                            ),
                            Padding(padding: EdgeInsets.only(left: 10)),
                            Container(
                              margin: EdgeInsets.only(left: 20),
                              child: Text("Profile",style: TextStyle(color: Colors.cyan[700],fontSize: 16,fontWeight: FontWeight.normal),)
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
        body: SafeArea(
          child: Column(
            children: [
             
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                 
                       Container(
                          margin: EdgeInsets.only(top: 20,left: 0,bottom: 10),
                          height:75,
                          width: 75,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: Image.asset("assets/profile.jpg"),
                          ),
                        ),
                      ],
                    ),
                 Container(
                  //  padding: EdgeInsets.only(left: 50),
                   child: Text("Hello,",style: TextStyle(color: Colors.grey,fontSize: 15),),
                 ),
                 Container(
              //  padding: EdgeInsets.only(left:50),
                   child: Text("Nooraiya Khan",style: TextStyle(color: Colors.black,fontSize: 18),),
                 ),
                 SizedBox(height: 20,),
                 Divider(),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     
                     Container(
                       margin: EdgeInsets.only(left: 20),
                       child: Icon(Icons.home,color: Colors.cyan[700],),
                     ),
                     Column(
                       children: [
                         Container(
                          margin: EdgeInsets.only(right: 80),
                           child: Text("Address",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),
                         ),
                          Container(
                          margin: EdgeInsets.only(top:3,left: 30),
                           child: Text("1 shoptodipa,taltola Sylhet ",style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.normal),),
                         ),
                       ],
                     )
                   ],
                 ),
             
              SizedBox(height: 8,),
                 Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     
                     Container(
                       margin: EdgeInsets.only(left: 20),
                       child: Icon(Icons.phone,color: Colors.cyan[700],),
                     ),
                     Column(
                       children: [
                         Container(
                        margin: EdgeInsets.only(left: 26),
                           child: Text("Phone Number",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),
                         ),
                          Container(
                          margin: EdgeInsets.only(top:3,left: 30),
                           child: Text("01XXXXXXXXX ",style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.normal),),
                         ),
                       ],
                     )
                   ],
                 ),
                  SizedBox(height: 8,),
                 Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                   children: [
                     
                     Container(
                       margin: EdgeInsets.only(left: 20),
                       child: Icon(Icons.email,color: Colors.cyan[700],),
                     ),
                     Column(
                       children: [
                         Container(
                          margin: EdgeInsets.only(left: 3),
                           child: Text("Facebook ID",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.bold),),
                         ),
                          Container(
                          margin: EdgeInsets.only(top:3,left: 30),
                           child: Text("Nooraiya Maysha",style: TextStyle(color: Colors.grey,fontSize: 14,fontWeight: FontWeight.normal),),
                         ),
                       ],
                     )
                   ],
                 ),
                      
                      
                  
              
            ],
          )),
      
    );
  }
}