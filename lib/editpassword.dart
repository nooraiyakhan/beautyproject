import 'package:beautyproject/mainpage.dart';
import 'package:beautyproject/loginpage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Editpassword extends StatefulWidget {
  @override
  _EditpasswordState createState() => _EditpasswordState();
}

class _EditpasswordState extends State<Editpassword> {
  bool isOldPasswordBlank=false;
  bool isNewPasswordBlank=false;
  bool isRetypeNewPasswordBlank=false;
  bool isPassnotMatch=false;
  var child;
     TextEditingController oldpasswordcontroller=new TextEditingController();
     TextEditingController newpasswordController=new TextEditingController();
      TextEditingController retypenewpasswordController=new TextEditingController();
    

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      iconTheme: IconThemeData(
        color: Colors.cyan[700]
      ),
      backgroundColor: Colors.white,
      title: Text("Edit Password",style: TextStyle(color: Colors.black54,fontSize: 16,fontWeight: FontWeight.normal),),
    ),
    body: SafeArea(
      child:SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20,left: 10,right: 10),
              padding: EdgeInsets.only(left: 10,right: 10),
              decoration: BoxDecoration(
                border: Border.all(width: 0.1),
                borderRadius: BorderRadius.circular(7)
              ),
              child: TextField(
                controller:oldpasswordcontroller,
            decoration: InputDecoration(
              hintText: "Type Your Old Password...",
              hintStyle: TextStyle(color: Colors.grey,fontSize: 15),
              labelText: "Enter Your Old Password ",
              labelStyle: TextStyle(color: Colors.cyan[700])
            ),
              ),
            ),
            SizedBox(height: 10,),
            isOldPasswordBlank
            ?Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Icon(
                    Icons.error_outline,color: Colors.redAccent,size: 17,
                  ),   ),
                  SizedBox(width: 5,),
                  Container(
                    child: Text("This field is blank",style: TextStyle(color: Colors.redAccent),),
                  )
              ],
            ):Container(),
             Container(
              margin: EdgeInsets.only(top: 20,left: 10,right: 10),
              padding: EdgeInsets.only(left: 10,right: 10),
              decoration: BoxDecoration(
                border: Border.all(width: 0.1),
                borderRadius: BorderRadius.circular(7)
              ),
              child: TextField(
                controller: newpasswordController,
            decoration: InputDecoration(
              hintText: "Type Your New Password...",
              hintStyle: TextStyle(color: Colors.grey,fontSize: 15),
              labelText: "Enter Your New Password ",
              labelStyle: TextStyle(color: Colors.cyan[700])
            ),
              ),
            ),
            SizedBox(height: 10,),
            isOldPasswordBlank
            ?Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Icon(
                    Icons.error_outline,color: Colors.redAccent,size: 17,
                  ),   ),
                  SizedBox(width: 5,),
                  Container(
                    child: Text("This field is blank",style: TextStyle(color: Colors.redAccent),),
                  )
              ],
            ):Container(),
           Container(
              margin: EdgeInsets.only(top: 20,left: 10,right: 10),
              padding: EdgeInsets.only(left: 10,right: 10),
              decoration: BoxDecoration(
                border: Border.all(width: 0.1),
                borderRadius: BorderRadius.circular(7)
              ),
              child: TextField(
                controller: retypenewpasswordController,
            decoration: InputDecoration(
              hintText: "Retype Your New Password...",
              hintStyle: TextStyle(color: Colors.grey,fontSize: 15),
              labelText: "Retype Your New Password ",
              labelStyle: TextStyle(color: Colors.cyan[700])
            ),
              ),
            ),
            SizedBox(height: 10,),
            isOldPasswordBlank
            ?Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Icon(
                    Icons.error_outline,color: Colors.redAccent,size: 17,
                  ),   ),
                  SizedBox(width: 5,),
                  Container(
                    child: Text("This field is blank",style: TextStyle(color: Colors.redAccent),),
                  )
              ],
            ):Container(),
            Container(
              width: 220,
              height: 45,
              margin: EdgeInsets.only(top: 20),
              child: MaterialButton(
                splashColor: Colors.white,
                color: Colors.cyan[700],
                
                onPressed: (){
                  setState(() {
                    if (oldpasswordcontroller.text.isEmpty) {
                    isOldPasswordBlank=true; }
                    else if (newpasswordController.text.isEmpty) {
                      isNewPasswordBlank=true;
                     
                    } else if(retypenewpasswordController.text.isEmpty){
                      isRetypeNewPasswordBlank=true;
                    }else{
                      isOldPasswordBlank=false;
                      isNewPasswordBlank=false;
                      isRetypeNewPasswordBlank=false;
                      showDialog(context: context,
                      builder: (BuildContext context)=>CupertinoAlertDialog(
                        
                        // content: 
                        // Image.asset("assets/reset.jpg",height: 150,fit: BoxFit.fill,),
                        title:
                         Text("Password Reset Successful",style: TextStyle(color: Colors.grey,fontSize:15,),),
                      
                        actions: [
                          CupertinoDialogAction(
                            isDefaultAction: true,
                          
                            child:Text("OK",style: TextStyle(color: Colors.cyan[700]),) ,
                            onPressed: (){
                              print("OK");
                              Navigator.push(context, 
                              MaterialPageRoute(builder: (context)=>Loginpage())
                              );
                            },
                          )
                        ],
                      )
                      
                      );
                    
                    }
                  });
                },
                child: Text("Next",style: TextStyle(color: Colors.white),),
                 shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                            ),
              ),
            )
          ],
        ),
      ) ),
    );
  }
}