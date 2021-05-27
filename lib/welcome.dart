import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';
import 'package:beautyproject/mainpage.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List welcomeItem=[
    {
      'picture':'assets/homeservice.jpg',
      'title':'Henna Home Service',
      'desc':'providing home service for bridal henna throughtout sylhet.'
    },
      {
      'picture':'assets/cone_wel.jpg',
      'title':'Cone Delivery',
      'desc':'Order our organic chemical and cruelty free homemade henna cone(Condition applied)'
    },
      {
      'picture':'assets/onlinebooking.jpg',
      'title':'Online Booking',
      'desc':'You can easily book us virtually'
    },
      {
      'picture':'assets/makeover.jpg',
      'title':'Makeover Service',
      'desc':'We make your decision even more easier.Get your henna and makeover done in one place.We do makeup too'
    }
  ];
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child:  SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 40),
                      height: 250,
                      child:Image.asset("${welcomeItem[index]['picture']}",
                      height: 250,
                      ) ,  ),
                      Container(
                        padding: EdgeInsets.only(top: 50),
                        child: Text("${welcomeItem[index]['title']}",
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                        ),),),
                        Container(
                          padding: EdgeInsets.only(left: 40,top: 20,right: 40,bottom: 10),
                          child: Text("${welcomeItem[index]['desc']}",
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            color: Colors.black54
                          )
                          ),
                        ),
                        SizedBox(height: 80,),
                        Container(
                          margin: EdgeInsets.only(left: 40,right: 40),
                          child: Row(
                            mainAxisAlignment: index == 2
                            ?MainAxisAlignment.center
                            :MainAxisAlignment.spaceEvenly,
                            children: [
                              index == 2
                              ?Container()
                              :GestureDetector(
                                onTap: (){
                                  Navigator.push(context, 
                                  MaterialPageRoute(builder: (context)=>WelcomePage())
                                  );
                                },
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  alignment: Alignment.centerLeft,
                                  width: 100,
                                  height: 30,
                                  child: Text("Skip",
                                  style: TextStyle(fontSize: 13,
                                  color: Colors.grey
                                  ),
                                  
                                  ),
                                ),
                              ),
                              index == 2
                              ?Container()
                              :Container(
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(right: 5),
                                      height: 8,
                                      width: 8,
                                      decoration: BoxDecoration(
                                        color: index==0
                                        ? Colors.cyan[700]
                                        : Colors.grey[300],
                                        borderRadius: BorderRadius.circular(5),

                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(right: 5),
                                      height: 8,
                                      width: 8,
                                      decoration: BoxDecoration(
                                        color: index == 1
                                        ?Colors.cyan[700]
                                        : Colors.grey[300],
                                        borderRadius: BorderRadius.circular(5)
                                      ),
                                    ),
                                    Container(
                                      height: 8,
                                      width: 8,
                                      decoration: BoxDecoration(
                                        color: index==2
                                        ?Colors.cyan[700]
                                        :Colors.grey[300],
                                        borderRadius: BorderRadius.circular(5)
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              GestureDetector(
                                onTap: (){
                                  setState(() {
                                    if (index == 0){
                                      index = 1;
                                    } else if (index == 1)
                                    {
                                      index=2;
                                    } else{
                                      Navigator.push(context, 
                                      MaterialPageRoute(builder: (context)=> WelcomePage())
                                      );
                                    }

                                  });
                                },
                                child: Container(
                                  decoration:  index ==2
                                  ?BoxDecoration(
                                    color: Colors.cyan[700],
                                    borderRadius: BorderRadius.circular(10)
                                  )
                                  :BoxDecoration(),
                                  alignment: index==2
                                  ?Alignment.center
                                  :Alignment.centerRight,
                                  width: index ==2 ? 200:100,
                                  height: index==2? 40:30,
                                  child: Text(
                                    index == 0 || index ==1
                                    ? "Next"
                                    :"Get Started >",
                                    style: TextStyle(
                                    fontSize: 13,
                                    color:  index == 2
                                    ? Colors.white
                                    :Colors.cyan[700],

                                    ),
                                  )

                                  
                                  ,
                                ),
                              )

                            ],
                          ),

                        )
                  ],
                ),
              )
            ],
          ),

      )),
      
    );
  }
}