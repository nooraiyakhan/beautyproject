import 'package:beautyproject/forgotpass.dart';
import 'package:beautyproject/newpassword.dart';
import 'package:flutter/material.dart';
class Enterver extends StatefulWidget {
  @override
  _EnterverState createState() => _EnterverState();
}

class _EnterverState extends State<Enterver> {
  bool isCodeBlank=false,
  isCodeInvalid=false;
  String code="0";
  var child;
  TextEditingController codeController =new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
      
        child:
     SingleChildScrollView(
           child: Column(
        //  mainAxisAlignment: MainAxisAlignment.center,
            children: [
                  GestureDetector(
                onTap: (){
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context)=>Forgotpass())
                  
                  );
                },
                child: Container(
                  child: Icon(Icons.arrow_back,color: Colors.black54,),
                  padding: EdgeInsets.only(left: 0,top: 20,right: 310),
                ),
              ),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(top: 20,bottom: 50),
                child:Image.asset("assets/enterver.jpg") ,),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(width: 1,color: Colors.cyan[700]),
                      borderRadius: BorderRadius.circular(5)
                  ),
                     padding: EdgeInsets.only(left: 10,bottom: 0),
                      margin: EdgeInsets.only(left: 10,right: 10,bottom: 0),
                  child: TextField(
                   controller: codeController,
                   onChanged: (value){
                     setState(() {
                       code=value;
                       if (code.length>6) {
                         code="";
                         codeController.text=code;
                       }
                     });
                   },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Type Verification Code",
                      hintStyle: TextStyle(color: Colors.grey,fontSize: 15),
                      labelText: "Enter Your Code",
                      labelStyle: TextStyle(color: Colors.cyan[700])

                    ),
                  ),
                ),
                SizedBox(height: 10,),
                isCodeBlank
                ?Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Container(
                    child: Icon(Icons.error_outline,color: Colors.redAccent,size: 17,),
                  ),
                  Container(
                    child: Text("Code Field Is Blank",style: TextStyle(color: Colors.redAccent),),
                  )
                  ],
                ):Container(
                  margin: EdgeInsets.only(right: 20),
                  alignment: Alignment.centerRight,
                child: Text(
                  "${code.length}/6*",
                  textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.grey),
                  
                  ),

                ),
                isCodeInvalid
                ?Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Container(
                    child: Icon(Icons.error_outline,color: Colors.redAccent,size: 17,),
                  ),
                  Container(
                    child: Text("Code Is Invalid",style: TextStyle(color: Colors.redAccent),),
                  )
                  ],
                ):Container(),
                SizedBox(height: 50,),
                Container(
                  width: 220,
                  height: 45,
                  margin: EdgeInsets.only(top: 0,bottom: 10),
                  child: MaterialButton(
                    splashColor: Colors.white,
                    color: Colors.cyan[700],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Text("Next",style: TextStyle(color: Colors.white),),
                    onPressed: (){
                      setState(() {
                        if(codeController.text.isEmpty){
                          isCodeBlank=true;
                        }else if(code.length<6){
                          isCodeBlank=false;
                          isCodeInvalid=true;
                           }else{
                             isCodeBlank=false;
                             isCodeInvalid=false;
                             Navigator.push(context, 
                          MaterialPageRoute(builder: (context)=>Newpassword())
                          );
                           }
                                 print("isCodeBlank");
                                  print(isCodeBlank);
                                
                                  print("isCodeInvalid");
                                  print(isCodeInvalid);
                           
                        
                      });

                    }),
                )
                
                ]),
         ))); 
            }
}