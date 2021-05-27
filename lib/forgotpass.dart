import 'package:beautyproject/enterver.dart';
import 'package:beautyproject/loginpage.dart';
import 'package:flutter/material.dart';
class Forgotpass extends StatefulWidget {
  @override
  _ForgotpassState createState() => _ForgotpassState();
}

class _ForgotpassState extends State<Forgotpass> {
  bool isPhoneBlank=false,
  isPhoneInvalid=false;
  String phone="0";
  var child;
  TextEditingController phoneController=new TextEditingController();
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
      
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
          
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             GestureDetector(
                onTap: (){
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context)=>Loginpage())
                  
                  );
                },
                child: Container(
                  child: Icon(Icons.arrow_back,color: Colors.black54,),
                  padding: EdgeInsets.only(left: 0,top: 20,right: 310),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10,left: 30),
                height: 200,
                width: MediaQuery.of(context).size.width,
                child:Image.asset("assets/forgotpass.jpg") ,),
                 SizedBox(height: 60,),
                Container(
                  child:Text("Forgot Your Password?",style: TextStyle(fontSize: 22,color: Colors.cyan[700],fontWeight: FontWeight.normal),) ,),
  SizedBox(height: 5,),
    Container(child: Text("No Worries!Enter Your Phone Number.We Will Sent You A New Reset",
                  style: TextStyle(fontSize: 10,color: Colors.grey[600]),),),
                  Container(
                    
                    decoration:BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      border: Border.all(width: 1,color: Colors.cyan[700]),
                      
                    ) ,
                    padding: EdgeInsets.only(left: 10),
                    margin: EdgeInsets.only(left: 10,right: 10,top: 30),
                  //  padding: EdgeInsets.only(top: 22,bottom: 22),
                    child: TextField(
                     
                      controller: phoneController,
                      onChanged: (value){
                        setState(() {
                          phone=value;
                          if (phone.length>11) {
                            phone="";
                            phoneController.text=phone;
                          }
                        });
                      },
                       keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Type Your Phone Number",
                        hintStyle: TextStyle(color: Colors.grey,fontSize: 15),

                        labelText: "Enter Your Phone Number",
                        labelStyle: TextStyle(color: Colors.cyan[700]),
                        
                        ),
                    ),
                    
                    
                    ),
                    SizedBox(height: 10,),
                    isPhoneBlank
                    ?Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Icon(Icons.error_outline,color: Colors.redAccent,size: 17,),

                        ),
                       
                        Container(
                          child: Text("Phone Number Field Is Blank",style: TextStyle(color: Colors.redAccent),),
                        )
                        
                      ],
                    )
                    :Container(
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
                            child: Text("Phone Number Is Invalid",style: TextStyle(color: Colors.redAccent),),
                          )
                          ],
                        ),
                      ):Container(),
                   
                    SizedBox(height: 20,),
                  Container(
                            width: 220,
                            height: 45,
                            margin: EdgeInsets.only(top: 0,bottom: 10),
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
                                  }else{
                                   isPhoneBlank=false;
                                   
                                   isPhoneInvalid=false;
                                   Navigator.push(context, 
                                   MaterialPageRoute(builder: (context)=>Enterver())
                                   
                                   );
                                  }
                                  print("isPhoneBlank");
                                  print(isPhoneBlank);
                                
                                  print("isPhoneInvalid");
                                  print(isPhoneInvalid);

                                });
                              },
                             
                            child: 
                          
                            Container(
                              
                              child: Text("Send Verification Code",style: TextStyle(color: Colors.white),)),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                            ),
                            
                            ),
                          ),

            ],
          ),

        )
        
        
      ),
     

      
    );
  }
}