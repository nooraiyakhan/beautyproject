import 'package:beautyproject/editpassword.dart';
import 'package:beautyproject/profile.dart';
import 'package:beautyproject/welcome.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Editprofile extends StatefulWidget {
  @override
  _EditprofileState createState() => _EditprofileState();
}

class _EditprofileState extends State<Editprofile> {
  bool isNameBlank=false;
   bool isAddressBlank=false;
    bool isPhoneBlank=false;
     bool isFbidlBlank=false;
     bool isPhoneInvalid=false;
    
     String phone="0";
     var child;
     TextEditingController nameController=new TextEditingController();
     TextEditingController addressController=new TextEditingController();
      TextEditingController phoneController=new TextEditingController();
     TextEditingController fbidController=new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color:Colors.cyan[700] 
        ),
        title: Text("Edit Profile",style: TextStyle(color: Colors.black54,fontSize: 16),),
        actions: [
          IconButton(icon: Icon(Icons.lock), 
          onPressed: (){
              Navigator.push(context, 
              MaterialPageRoute(builder: (context)=>Editpassword())
              
              );
          })
        ],
      ),
      body: SafeArea(
        child:
         SingleChildScrollView(
           physics: BouncingScrollPhysics(),
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.only(top: 20,left: 0,bottom: 10),
                            height:75,
                            width: 75,
                child:ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset("assets/profile.jpg"),
                ) ,
              ),
              Container(
                margin: EdgeInsets.only(left: 100,right: 100),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 0.1)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                    
                      padding: EdgeInsets.only(top: 10,bottom: 10),
                      child: Icon(Icons.photo,color: Colors.black54,size: 17,),
                    ),
                    SizedBox(width: 10,),
                    Container(
                      child: Text(
                        "Select photo",style: TextStyle(color: Colors.black54,fontSize: 14),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Divider(),
              Container(
                margin: EdgeInsets.only(left: 20,right: 20,bottom: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 5),

                      padding: EdgeInsets.only(
                        left: 10,right: 10,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(width: 0.1),
                        borderRadius: BorderRadius.circular(7)
                      ),
                      child: TextField(
                        controller: nameController,
                        decoration: InputDecoration(
                        hintText: "Type Your name",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 15
                        ),
                        labelText: "Enter Your Name",
                        labelStyle: TextStyle(color: Colors.cyan[700])
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    isNameBlank
                    ?Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Icon(Icons.error_outline,color: Colors.redAccent,size: 17,),
                          
                        ),
                        SizedBox(width: 5,),
                      Container(
                        child: Text("This field is blank",style: TextStyle(color: Colors.redAccent),),
                      )
                      ],
                    ):Container(),
                     Container(
                      margin: EdgeInsets.only(top: 5),

                      padding: EdgeInsets.only(
                        left: 10,right: 10,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(width: 0.1),
                        borderRadius: BorderRadius.circular(7)
                      ),
                      child: TextField(
                        controller: addressController,
                        decoration: InputDecoration(
                        hintText: "Type Your Address",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 15
                        ),
                        labelText: "Enter Your Address",
                        labelStyle: TextStyle(color: Colors.cyan[700])
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    isAddressBlank
                    ?Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Icon(Icons.error_outline,color: Colors.redAccent,size: 17,),
                          
                        ),
                        SizedBox(width: 5,),
                      Container(
                        child: Text("This field is blank",style: TextStyle(color: Colors.redAccent),),
                      )
                      ],
                    ):Container(),
                     Container(
                      margin: EdgeInsets.only(top: 5),

                      padding: EdgeInsets.only(
                        left: 10,right: 10,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(width: 0.1),
                        borderRadius: BorderRadius.circular(7)
                      ),
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
                        decoration: InputDecoration(
                        hintText: "Type Your Phone Number",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 15
                        ),
                        
                        labelText: "Enter Your Phone Number",
                        labelStyle: TextStyle(color: Colors.cyan[700])
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    isPhoneBlank
                    ?Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Icon(Icons.error_outline,color: Colors.redAccent,size: 17,),
                          
                        ),
                        SizedBox(width: 5,),
                      Container(
                        child: Text("This field is blank",style: TextStyle(color: Colors.redAccent),
                      )
                       ) ],
                    ):Container(
                      margin: EdgeInsets.only(right: 20),
                      alignment: Alignment.centerRight,
                      child: Text("${phone.length}/11* ",
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
                            child: Icon(Icons.error_outline,size: 17,color: Colors.redAccent,),
                            
                          ),
                          SizedBox(width: 5,),
                          Container(
                            child: Text("Number is invalid",style: TextStyle(color: Colors.redAccent),),
                          )
                        ],
                      ),
                    ):Container(),
                     Container(
                      margin: EdgeInsets.only(top: 5),

                      padding: EdgeInsets.only(
                        left: 10,right: 10,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(width: 0.1),
                        borderRadius: BorderRadius.circular(7)
                      ),
                      child: TextField(
                        controller: fbidController,
                        decoration: InputDecoration(
                        hintText: "Type Your Facebook ID",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 15
                        ),
                        labelText: "Enter Your Facebook ID",
                        labelStyle: TextStyle(color: Colors.cyan[700])
                        ),
                      ),
                    ),
                    SizedBox(height: 5,),
                    isNameBlank
                    ?Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Icon(Icons.error_outline,color: Colors.redAccent,size: 17,),
                          
                        ),
                        SizedBox(width: 5,),
                      Container(
                        child: Text("This field is blank",style: TextStyle(color: Colors.redAccent),),
                      )
                      ],
                    ):Container(),
                   
                
                    SizedBox(height: 10,),
                  Container(
                    width: 220,
                    height: 45,
                    child: MaterialButton(
                      splashColor: Colors.white,
                      color: Colors.cyan[700],
                      onPressed: (){
                        setState(() {
                          if(nameController.text.isEmpty){
                            isNameBlank=true;
                          }
                       if(addressController.text.isEmpty  ){
                            isNameBlank=false;
                            isAddressBlank=true;
                           
                            isPhoneBlank=false;
                           isFbidlBlank=false;
                            
                          }
                            if (phoneController.text.isEmpty) {
                            isPhoneBlank=false;
                            
                          }else if (phone.length<11) {
                            isNameBlank=false;
                            isAddressBlank=false;
                            isPhoneBlank=false;
                            isPhoneInvalid=true;
                             isFbidlBlank=false;
                          }
                          if(fbidController.text.isEmpty){
                             isFbidlBlank=true;

                          }else{
                            isNameBlank=false;
                            isAddressBlank=false;
                            isPhoneBlank=false;
                            isPhoneInvalid=false;
                            isFbidlBlank=false;
                          
                          showDialog(context: context,
                          builder: (BuildContext context)=>CupertinoAlertDialog(
                            title: Text("Your Profile is updated",style: TextStyle(color: Colors.grey,fontSize: 15),),
                            actions: [
                              CupertinoDialogAction(
                                isDefaultAction: true,
                                
                                child: Text("OK",style: TextStyle(color: Colors.cyan[700]),),
                                onPressed: (){
                                  print("OK");
                                        Navigator.push(context, 
                          MaterialPageRoute(builder: (context)=>Profile()));
                                },
                                
                                )
                            ],
                          )
                          );}
                                print("isNameBlank");
                                  print(isNameBlank);
                                    print("isPhoneInvalid");
                                  print(isPhoneInvalid);
                                  print("isAddressBlank");
                                  print(isAddressBlank);
                                  print("isPhoneBlank");
                                  print(isPhoneBlank);
                                    print("isPhoneInvalid");
                                  print(isPhoneInvalid);
                                  print("isFbidlBlank");
                                  print(isFbidlBlank);
                                  
                      }
                          );
                              },child: Text("Done",style: TextStyle(color: Colors.white),),
                               shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),

                            ),
                          
                      
                      ),
                      
                      
                  ),
               
                    // Container(
                    //   width: 220,
                    //   height: 45,
                    //  child: MaterialButton(
                         
                    //    splashColor: Colors.white,
                    //    color: Colors.cyan[700],
                    //    onPressed: (){
                    //      setState(() {
                    //      if(nameController.text==""){
                    //        isNameBlank=true;
                    //        isAddressBlank=false;
                    //        isPhoneBlank=false;
                    //        isEmailBlank=false;
                    //      }else if(addressController.text==""){
                    //         isNameBlank=false;
                    //        isAddressBlank=true;
                    //        isPhoneBlank=false;
                    //        isEmailBlank=false;
                    //      }
                    //      else if(phoneCntroller.text==""){
                    //        isPhoneBlank=true;
                    //      }
                    //      else if(emailController.text==""){
                    //        isEmailBlank=true;
                    //      }else {
                    //        Navigator.push(context, 
                    //        MaterialPageRoute(builder: (context)=>Profile()
                    //        ));
                    //      }
                    //      });
                    //    },
                    //    child: Text("Next",style: TextStyle(color: Colors.white,),),
                    //       shape: RoundedRectangleBorder(
                    //           borderRadius: BorderRadius.circular(10)
                    //         ),
                    //    ),
                    // )
                      // Container(
                      //       width: 220,
                      //       height: 45,
                      //       margin: EdgeInsets.only(top: 40),
                      //       child: MaterialButton(
                      //         splashColor: Colors.white,
                      //         color: Colors.cyan[700],
                      //         onPressed: (){
                      //           setState(() {
                                  
                      //             if(phoneController.text.isEmpty){
                      //               isPhoneBlank=true;
                      //             }else if(phone.length<11){
                      //               isPhoneBlank=false;
                      //               isPhoneInvalid=true;
                      //             }else if
                      //               (passController.text.isEmpty){
                      //                 isPassBlank=true;
                      //                 isPhoneInvalid=false;
                                    
                      //             }else{
                      //              isPhoneBlank=false;
                      //              isPassBlank=false;
                      //              isPhoneInvalid=false;
                      //              Navigator.push(context, 
                      //              MaterialPageRoute(builder: (context)=>BookingPage())
                                   
                      //              );
                      //             }
                      //             print("isPhoneBlank");
                      //             print(isPhoneBlank);
                      //             print("isPassBlank");
                      //             print(isPassBlank);
                      //             print("isPhoneInvalid");
                      //             print(isPhoneInvalid);

                      //           });
                      //         },
                      //       child: 
                      //       Text("Next",style: TextStyle(color: Colors.white),),
                      //       shape: RoundedRectangleBorder(
                      //         borderRadius: BorderRadius.circular(10)
                      //       ),
                            
                      //       ),
                      //     ),
                  ],
                ),
              )
            ],
        ),
         ))
      ,
    );
  }
}