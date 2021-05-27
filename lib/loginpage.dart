

import 'package:beautyproject/bookingpage.dart';
import 'package:beautyproject/forgotpass.dart';
import 'package:beautyproject/formpage.dart';
import 'package:flutter/material.dart';
class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool isSeen=false;
  bool isPhoneBlank=false;
  bool isPassBlank=false;
   bool isPhoneInvalid=false;
   
    String phone="0";
    var child;
    TextEditingController phoneController=new TextEditingController();
    TextEditingController passController=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       body:SafeArea(
         child: SingleChildScrollView(
           physics: BouncingScrollPhysics(),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Container(
                  margin:EdgeInsets.only(left: 20,top: 100) ,
                 child: Text("Welcome!",style: TextStyle(fontSize: 25),)),
                   Container(
                
                 child: Text("Hey There!Get The Best From Our App",style: TextStyle(fontSize:11,color: Colors.grey[500]),),
                 padding: EdgeInsets.only(left: 20,top: 5),
                 ),
                 Padding(padding: EdgeInsets.all(20)),

                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        padding: EdgeInsets.only(bottom: 10),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)

                        ),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(color: Colors.grey))   ),
                                child: TextField(
                                  controller: phoneController,
                                  onChanged: (value){
                                    setState(() {
                                      phone=value;
                                      if(phone.length>11){
                                        phone="";
                                        phoneController.text=phone;
                                      }
                                    });
                                  },
                                  keyboardType: TextInputType.number,
                                  decoration: InputDecoration(border: InputBorder.none,
                                  hintText:"Phone Number",hintStyle:TextStyle(color: Colors.grey) ),
                                ),  ),
                                
                          ],
                        ),
                      ),
                      isPhoneBlank
                      ?Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.error_outline,color: Colors.redAccent,size: 17,),
                            SizedBox(width: 5,),
                            Text("Phone number field is blank",style: TextStyle(color: Colors.redAccent,),),
                           
                          ],
                        ),
                      ):Container(
                        margin: EdgeInsets.only(right: 20),
                        alignment: Alignment.centerRight,
                        child: Text(
                          "${phone.length}/11*",
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      isPhoneInvalid
                      ?Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                          Container(
                          child: Icon(Icons.error_outline,color: Colors.redAccent,size: 17,),
                        
                          ),
                          SizedBox(width: 5,),
                          Container(
                            child: Text("Phone number is invalid",style: TextStyle(color: Colors.redAccent),),
                          )
                          ],
                        ),
                      ):Container(),
                      Column(
                        children: [
                          Padding(padding: EdgeInsets.only(top: 50)),
                          Container(
                            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                            padding: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(color: Colors.white,
                            borderRadius: BorderRadius.circular(10), ),
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey))
                                  ),
                                  child: Row(
                                    children: [
                                      Flexible(child: 
                                      TextField(
                                        controller: passController,
                                        obscureText: isSeen==false?true:false,
                                        decoration: InputDecoration
                                        (border: InputBorder.none,
                                        hintText: "Password",
                                        hintStyle:TextStyle(color: Colors.grey))
                                        ),
                                      ),
                                    GestureDetector(
                                      onTap: (){
                                        setState(() {
                                          
                                        if(isSeen==false){
                                          isSeen=true;
                                        }else{
                                          isSeen=false;
                                        }
                                        });
                                      },
                                      child: Icon(
                                        isSeen==false
                                        ?Icons.visibility_off
                                        :Icons.visibility,
                                        color: Colors.grey,
                                        size: 22,
                                      ),
                                    )
                                    ],
                                  ),
                                )
                              ],
                            ),

                          ),
                          isPassBlank
                          ?Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.error_outline,
                                  color: Colors.redAccent,
                                  size: 17,
                                ),
                                SizedBox(width: 5,),
                                Text("Password Field Is Blank",style: TextStyle(color: Colors.redAccent),)
                              ],
                            ),
                          ):Container(),
                          GestureDetector(
                            onTap:(){
                              Navigator.push(context, 
                              MaterialPageRoute(builder: (context)=>Forgotpass())
                              );
                            } ,
                            child: Container(
                              padding: EdgeInsets.only(left: 200,top: 10,),
                              margin: EdgeInsets.only(top: 15),
                              child: Text("Forgot Password?",
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.normal
                              ),
                              
                              ),

                            ),
                          ),
                          Container(
                            width: 220,
                            height: 45,
                            margin: EdgeInsets.only(top: 40),
                            child: MaterialButton(
                              splashColor: Colors.white,
                              color: Colors.cyan[700],
                              onPressed: (){
                                setState(() {
                                  
                                  if(phoneController.text.isEmpty){
                                    isPhoneBlank=true;
                                  }else if(phone.length<11){
                                    isPhoneBlank=false;
                                    isPhoneInvalid=true;
                                  }else if
                                    (passController.text.isEmpty){
                                      isPassBlank=true;
                                      isPhoneInvalid=false;
                                    
                                  }else{
                                   isPhoneBlank=false;
                                   isPassBlank=false;
                                   isPhoneInvalid=false;
                                   Navigator.push(context, 
                                   MaterialPageRoute(builder: (context)=>BookingPage())
                                   
                                   );
                                  }
                                  print("isPhoneBlank");
                                  print(isPhoneBlank);
                                  print("isPassBlank");
                                  print(isPassBlank);
                                  print("isPhoneInvalid");
                                  print(isPhoneInvalid);

                                });
                              },
                            child: 
                            Text("Next",style: TextStyle(color: Colors.white),),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                            ),
                            
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 30,top: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Don't Have An Account?",
                                style: TextStyle(fontSize: 14,),
                                ),
                                SizedBox(width: 5,),
                                GestureDetector(
                                  onTap: (){
                                    Navigator.push(context, 
                                    MaterialPageRoute(builder: (context)=>FormPage())
                                    
                                    );

                                  },
                                   child: Container(
                                     child: Text("Sign Up",
                                     style: TextStyle(color: Colors.cyan[700],fontSize: 14,fontWeight: FontWeight.normal),
                                     
                                     
                                     ),
                                   ),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  )
             ],
           ),
         )
       )
    );
  }
}