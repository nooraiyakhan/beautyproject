import 'package:beautyproject/mainpage.dart';
import 'package:beautyproject/loginpage.dart';
import 'package:flutter/material.dart';
class Newpassword extends StatefulWidget {
  @override
  _NewpasswordState createState() => _NewpasswordState();
}

class _NewpasswordState extends State<Newpassword> {
  
  bool isSeen=false;
  bool isNewPasswordBlank=false;
  bool isConfirmPasswordBlank=false;
  var child;
  TextEditingController newpasswordcontroller=new TextEditingController();
   TextEditingController confirmpasswordcontroller=new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(child: 
      SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child:Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context)=>Loginpage())
                  
                  );
                },
                child: Container(
                  child: Icon(Icons.arrow_back,color: Colors.black54,),
                  padding: EdgeInsets.only(left: 10,top: 20),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                margin: EdgeInsets.only(left: 20,right: 20,top: 100),
                decoration: BoxDecoration(
                  border: Border.all(width: 1,color: Colors.cyan[700],
                  
                  ),
                  borderRadius: BorderRadius.circular(5)
                ),
                child: 
                Row(
                  children: [
                    Flexible(
                      child: TextField(
                        controller: newpasswordcontroller,
                         obscureText: isSeen==false?true:false,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Type Your New Password...",
                          hintStyle: TextStyle(color: Colors.grey,fontSize: 15),
                          labelText: "Enter New Password",
                          labelStyle: TextStyle(color: Colors.cyan[700])
                        ),
                        
                        
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
              ),
              isNewPasswordBlank
              ?Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.error_outline,color: Colors.redAccent,size: 17,),
                    SizedBox(width: 5,),
                    Text("New Password Field Is Blank")
                  ],
                ),
              ):Container(),
              SizedBox(height: 20,),
                Container(
                padding: EdgeInsets.only(left: 10),
                margin: EdgeInsets.only(left: 20,right: 20),
                decoration: BoxDecoration(
                  border: Border.all(width: 1,color: Colors.cyan[700],
                  
                  ),
                  borderRadius: BorderRadius.circular(5)
                ),
                child: 
                Row(
                  children: [
                    Flexible(
                      child: TextField(
                        controller: confirmpasswordcontroller,
                         obscureText: isSeen==false?true:false,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Confirm Your New Password...",
                          hintStyle: TextStyle(color: Colors.grey,fontSize: 15),
                          labelText: "Confirm Password",
                          labelStyle: TextStyle(color: Colors.cyan[700])
                        ),
                        
                        
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
              ),
              isNewPasswordBlank
              ?Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.error_outline,color: Colors.redAccent,size: 17,),
                    SizedBox(width: 5,),
                    Text("Confirm Password Field Is Blank")
                  ],
                )):Container(),
                GestureDetector(
                  onTap: (){
                    setState(() {
                      if (newpasswordcontroller.text.isEmpty){
                        isNewPasswordBlank=true;
                      }else if (
                        confirmpasswordcontroller.text.isEmpty
                      ) {
                        isConfirmPasswordBlank=true;
                      }else{
                        Navigator.push(context, 
                       MaterialPageRoute(builder: (context)=>MainPage())
                        );
                      }
                    });
                  },
                  
                  child: Container(
                  margin: EdgeInsets.only(top: 30,bottom: 20,left: 20,right: 20),
                  padding: EdgeInsets.only(left: 50,right: 50,top: 10,bottom: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.cyan[700],
                    
                  ),
                  child: Container(
                    child: Text("Sumbmit",style: TextStyle(color: Colors.white,fontSize: 16),),
                  ),
                ),)    ],
            
          ),
        )
      ),
      )
 
                     
                        );
    
  }
}