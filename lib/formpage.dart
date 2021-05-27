

import 'package:beautyproject/bookingpage.dart';
import 'package:flutter/material.dart';
class FormPage extends StatefulWidget {
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  bool isSeen=false;
  bool isNameBlank=false;
  bool isPhoneBlank=false;
   bool isPhoneInvalid=false;
  bool isAddressBlank=false;
  bool isFbidBlank=false;
  bool isPasswordBlank=false;
   String phone="0";
  var child;
  
  TextEditingController nameController=new TextEditingController();
   TextEditingController phoneController=new TextEditingController();
    TextEditingController addressController=new TextEditingController();
     TextEditingController fbidController=new TextEditingController();
     TextEditingController passwordController=new TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.cyan[700]
        ),
      ),
   body: SingleChildScrollView(
    
     physics: BouncingScrollPhysics(),
     child: Column(
   crossAxisAlignment: CrossAxisAlignment.center,
       children: [
 
         SizedBox(height: 30,),
         
         Container(
          padding: EdgeInsets.only(right: 150),
           child: Text("Register yourself first!",style: TextStyle(color: Colors.cyan[700],fontSize: 16),),
         ),
         Container(
           padding: EdgeInsets.only(left:5,top: 5),
           child: Text("You can select your time and date after the registration is done.",style: TextStyle(color: Colors.grey,
           fontSize: 11),),
         ),
         Container(
           margin: EdgeInsets.only(top: 30,left: 20,right: 10),
           padding: EdgeInsets.only(left: 10,right: 10),
           decoration: BoxDecoration(
             border: Border.all(width: 0.1),
             borderRadius: BorderRadius.circular(7)
           ),
           child: TextField(
             controller: nameController,
             decoration: InputDecoration(
               hintText: "Type Your Name...",hintStyle: TextStyle(
                 color: Colors.grey,fontSize: 15, ),
                 labelText: "Enter Your Name",
                 labelStyle: TextStyle(color:Colors.cyan[700] )
             ),
           ),
         ),
         SizedBox(height: 5,),
         isNameBlank
         ?Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
            child: Icon(Icons.error_outline,size: 17,color: Colors.redAccent,),
            ),
            Container(
              child: Text("This field is blank",style: TextStyle(color: Colors.redAccent),),
            )

          ],
         ):Container(),
           Container(
           margin: EdgeInsets.only(top: 20,left: 20,right: 10),
           padding: EdgeInsets.only(left: 10,right: 10),
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
               hintText: "Type Your Phone Number...",hintStyle: TextStyle(
                 color: Colors.grey,fontSize: 15, ),
                
                 labelText: "Enter Your Phone Number",
                 labelStyle: TextStyle(color:Colors.cyan[700] ),
              
             ),
           ),
         ),
         isPhoneBlank
         ?Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
            child: Icon(Icons.error_outline,size: 17,color: Colors.redAccent,),
            ),
            Container(
              child: Text("This field is blank",style: TextStyle(color: Colors.redAccent),),
            )

          ],
         ):Container(
           margin: EdgeInsets.only(right: 20,top: 5),
           alignment: Alignment.centerRight,
           child: Text("${phone.length}/11*",
           textAlign: TextAlign.left,
           style: TextStyle(color: Colors.grey),
           
           ),

         ),
         SizedBox(height: 5,),
         isPhoneInvalid
         ?
            Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
            child: Icon(Icons.error_outline,size: 17,color: Colors.redAccent,),
            ),
            Container(
              child: Text("Number is invalid",style: TextStyle(color: Colors.redAccent),),
            )

          ],
         )
          :Container(),
          Container(
           margin: EdgeInsets.only(top: 20,left: 20,right: 10),
           padding: EdgeInsets.only(left: 10,right: 10),
           decoration: BoxDecoration(
             border: Border.all(width: 0.1),
             borderRadius: BorderRadius.circular(7)
           ),
           child: TextField(
             controller: passwordController,
             decoration: InputDecoration(
               hintText: "Type Your Password...",hintStyle: TextStyle(
                 color: Colors.grey,fontSize: 15, ),
                 labelText: "Enter Your Password",
                 labelStyle: TextStyle(color:Colors.cyan[700] )
             ),
           ),
         ),
         SizedBox(height: 5,),
         isPasswordBlank
         ?Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
            child: Icon(Icons.error_outline,size: 17,color: Colors.redAccent,),
            ),
            Container(
              child: Text("This field is blank",style: TextStyle(color: Colors.redAccent),),
            )

          ],
         ):Container(),
           Container(
           margin: EdgeInsets.only(top: 20,left: 20,right: 10),
           padding: EdgeInsets.only(left: 10,right: 10),
           decoration: BoxDecoration(
             border: Border.all(width: 0.1),
             borderRadius: BorderRadius.circular(7)
           ),
           child: TextField(
             controller: addressController,
             decoration: InputDecoration(
               hintText: "Type Your Address...",hintStyle: TextStyle(
                 color: Colors.grey,fontSize: 15, ),
                 labelText: "Enter Your Address",
                 labelStyle: TextStyle(color:Colors.cyan[700] )
             ),
           ),
         ),
         SizedBox(height: 5,),
         isAddressBlank
         ?Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
            child: Icon(Icons.error_outline,size: 17,color: Colors.redAccent,),
            ),
            Container(
              child: Text("This field is blank",style: TextStyle(color: Colors.redAccent),),
            )

          ],
         ):Container(),
           Container(
           margin: EdgeInsets.only(top: 20,left: 20,right: 10),
           padding: EdgeInsets.only(left: 10,right: 10),
           decoration: BoxDecoration(
             border: Border.all(width: 0.1),
             borderRadius: BorderRadius.circular(7)
           ),
           child: TextField(
             controller: fbidController,
             decoration: InputDecoration(
               hintText: "Type Your Facebook ID...",hintStyle: TextStyle(
                 color: Colors.grey,fontSize: 15, ),
                 labelText: "Enter Your Facebook ID",
                 labelStyle: TextStyle(color:Colors.cyan[700] )
             ),
           ),
         ),
         SizedBox(height: 5,),
         isFbidBlank
         ?Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
            child: Icon(Icons.error_outline,size: 17,color: Colors.redAccent,),
            ),
            Container(
              child: Text("This field is blank",style: TextStyle(color: Colors.redAccent),),
            )

          ],
         ):Container(),
          Container(
            width: 220,
            height: 45,
            margin: EdgeInsets.only(top: 30),
            child: MaterialButton(
              splashColor: Colors.white,
              color: Colors.cyan[700],
                onPressed: (){
                  setState(() {
                    if(nameController.text.isEmpty){
                      isNameBlank=true;
                    }else{
                          isNameBlank=true;
                      isPhoneBlank=false;
                      isPhoneInvalid=true;
                      isPasswordBlank=false;
                      isAddressBlank=false;
                      isFbidBlank=false;
                    }
                    
                    if (phoneController.text.isEmpty) {
                      isPhoneBlank=false;
                    } else if (
                      phone.length<11
                    ) {
                      isNameBlank=false;
                      isPhoneBlank=false;
                      isPhoneInvalid=true;
                      isPasswordBlank=false;
                      isAddressBlank=false;
                      isFbidBlank=false;
                    }if (passwordController.text.isEmpty) {
                      isPasswordBlank=true;
                    }else{
                         isNameBlank=false;
                      isPhoneBlank=false;
                      isPhoneInvalid=false;
                      isPasswordBlank=true;
                      isAddressBlank=false;
                      isFbidBlank=false;
                    }if (
                      addressController.text.isEmpty
                    ) {isAddressBlank=true;
                      
                    }else{
                        isNameBlank=false;
                      isPhoneBlank=false;
                      isPhoneInvalid=false;
                      isPasswordBlank=false;
                      isAddressBlank=true;
                      isFbidBlank=false;
                    }if (
                      fbidController.text.isEmpty
                    ) {
                      isFbidBlank=true;
                    }else {
                        isNameBlank=false;
                      isPhoneBlank=false;
                      isPhoneInvalid=false;
                      isPasswordBlank=false;
                      isAddressBlank=false;
                      isFbidBlank=true;
                    }if (fbidController.text.isNotEmpty) {
                         isNameBlank=false;
                      isPhoneBlank=false;
                      isPhoneInvalid=false;
                      isPasswordBlank=false;
                      isAddressBlank=false;
                      isFbidBlank=false;
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context)=>BookingPage())
                      
                      );
                    }
                    print("isNameBlank");
                    print(isNameBlank);
                    print("isPhoneBlank");
                    print(isPhoneBlank);
                    print("isPhoneInvalid");
                    print(isPhoneInvalid);
                    print("isPasswordBlank");
                    print(isPasswordBlank);
                    print("isAddressBlank");
                    print(isAddressBlank);
                    print("isFbidBlank");
                    print(isFbidBlank);
                  });
                },
                child: Text("Submit",style: TextStyle(color: Colors.white,),),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
            ),
          )
       ],
     ),
   ),
    );
  }
}