
import 'package:beautyproject/aboutus.dart';
import 'package:beautyproject/bookingpage.dart';
import 'package:beautyproject/forgotpass.dart';
import 'package:beautyproject/formpage.dart';
import 'package:beautyproject/loginpage.dart';
import 'package:beautyproject/profile.dart';
import 'package:beautyproject/welcome.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Slider(value: null, onChanged: null),
      debugShowCheckedModeBanner: false,
    );
  }

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List hennaList = [
    {
      'pic': 'assets/simpleonestring_each side_100tk.jpg',
      'name': 'Simple Design (each side)',
      'price': '100/-',
      'isDrop': false,
      'isPrice': true,
      'isShowList': false,
      'isList': false,
      'isSliderList': false,
      'count':1,
    },
    {
      'pic': 'assets/engagement_henna_1.5K_bothhand_both side.jpg',
      'name': 'Engagement Package Both Hand(both side) ',
      'price': '1500/-',
      'isDrop': false,
      'isPrice': true,
      'isShowList': false,
      'isList': false,
      'isSliderList': false,
      'count':1,
    },
    {
      'pic': 'assets/bp_2.jpg',
      'name': 'Bridal Package',
      'price': '',
      'isDrop': true,
      'isPrice': false,
      'isShowList': false,
      'isList': true,
      'isSliderList': false,
      'count':1,
    },
    {
      'pic': 'assets/combine_pack_1.jpeg',
      'name': 'Combine Pack',
      'price': '',
      'isDrop': true,
      'isPrice': false,
      'isShowList': false,
      'isList': true,
      'isSliderList': true,
      'count':1,
    },
  ];
  List bridalList = [
    {
      'pic': 'assets/bp_2.jpg',
      'name': 'Both Hands Below Albow',
      'price': 'Price: 2,500/-',
      'isBoxDecoration': true,
      'isSliderList': false,
      'count':1,
    },
    {
      'pic': 'assets/bp_3.jpg',
      'name': 'Both Hands Upto Albow',
      'price': 'Price: 3,000/-',
      'isBoxDecoration': true,
      'isSliderList': false,
      'count':1,
    },
    {
      'pic': 'assets/bothhands_above_elbow_bp_4.jpg',
      'name': 'Both Hands Above Albow',
      'price': 'Price: 3,500/-',
      'isBoxDecoration': true,
      'isSliderList': false,
      'count':1,
    },
  ];
  List combineList = [
    {
      'name': 'Both Hands Upto Elbow + Simple Feet Mendala',
      'price': '3,000/-',
      'isBoxDecoration': false,
      'isSliderList': true,
      'count':1,
    },
    {
      'name': 'Both Hands Intricate + Heavy String On Feet',
      'price': '4,500/-',
      'isBoxDecoration': false,
      'isSliderList': true,
      'count':1,
    },
    {
      'name': 'Both Hands Intricate + Intricate Feet Doodle ',
      'price': '3,000/-',
      'isBoxDecoration': false,
      'isSliderList': true,
      'count':1,
    },
  ];
  List sliderPic = [
    "assets/combine_pack_1.jpeg",
    "assets/cp_1.jpg",
  ];
   List sliderPic1 = [
    "assets/combine_pack_1.jpeg",
    "assets/cp_1.jpg",
  ];
   List sliderPic3 = [
    "assets/combine_pack_1.jpeg",
    "assets/cp_1.jpg",
  ];
  

  List makeupList = [
   

   {
      'pic': 'assets/bridal.jpg',
      'name': 'Bridal Makeup',
      'price':'3,500/-',
      'desc':'(Includes Hair Styling,Saree Setting And Dupatta Setting)',
      'count':1,
    },
           {
      'pic': 'assets/partymakeup.jpg',
      'name': 'Party Makeup',
      'price':'1,000/-',
      'desc':'Includes Hair Styling',
      'count':1,
    },
      {
      'pic': 'assets/simplemakeup.jpg',
      'name': 'Simple Makeup',
      'price':'450/-',
      'desc':'Without Hair Styling',
      'count':1,
    },];
    List coneList=[
      {
        'pic': 'assets/henna_each.jpg',
      'name': 'Each Cone',
      'price':'120/-',
      'count':1,
      },
       {
        'pic': 'assets/conebox.jpg',
      'name': 'Each Box(6 piece)',
      'price':'700/-',
      'count':1,
      }
    ];
  
  List offerList = [
    {'pic': 'assets/conebox.jpg',
     'desc': '10% Off On Per Box',
     'count':1,}
  ];

  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      
      backgroundColor: Colors.white,
      body: SafeArea(
        child:NestedScrollView(
          physics: BouncingScrollPhysics(),
           headerSliverBuilder: (BuildContext context,bool innerBoxIsScrolled){
             return <Widget>[
               SliverAppBar(
                 automaticallyImplyLeading: false,
                 backgroundColor: Colors.white,
                 leading: InkWell(
                   onTap: (){
                     Scaffold.of(context).openDrawer();
                     
                   },child: Icon(Icons.menu,color: Colors.cyan[700],),
                  
                 ),
                 title: 
                 
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Container(
                       margin: EdgeInsets.only(right: 30,top: 10,),
                       child: Image.asset("assets/splash.jpg",height: 35,),
                     ),
                    
                   ],
                 ),
                 
               )
             ];
           },
          
      
        body:
         SafeArea(
           child: DefaultTabController(
              length: 4,
              child: Container(
                child: Column(children: [
                  Container(
                  //  margin: EdgeInsets.only(top: 10),
                    child: new Material(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(color: Colors.white),
                        child: new TabBar(
                          isScrollable: false,
                          labelStyle: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.cyan[700],
                          ),
                          tabs: [
                            Tab(
                              text: "Henna",
                            ),
                            Tab(
                              text: "Makeup",
                            ),
                            Tab(
                              text: "Cone",
                            ),
                            Tab(
                              text: "Offers",
                            ),
                            
                          ],
                          indicatorColor: Colors.cyan[700],
                          unselectedLabelColor: Color(0xff354D58),
                          unselectedLabelStyle: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 14),
                          indicator: UnderlineTabIndicator(
                            borderSide:
                                BorderSide(width: 1.5, color: Colors.cyan[700]),
                            insets: EdgeInsets.symmetric(horizontal: 25.0),
                          ),
                          indicatorPadding: EdgeInsets.only(left: 30, right: 30),
                          labelColor: Colors.cyan[700],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: TabBarView(
                      children: [
                        SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 10, right: 10),
                                child: Column(
                                  children:
                                      List.generate(hennaList.length, (index) {
                                    return Container(
                                      margin: EdgeInsets.only(top: 5, bottom: 5),
                                      child: Card(
                                        elevation: 3,
                                        child: Container(
                                          // margin: EdgeInsets.only(top: 10),
                                          padding: EdgeInsets.all(15),
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                          ),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  height: 200,
                                                  width: MediaQuery.of(context)
                                                      .size
                                                      .width,
                                                  // padding: EdgeInsets.all(10),
                                                  child: hennaList[index]
                                                              ['isSliderList'] ==
                                                          true
                                                      ? Column(
                                                          children:
                                                          
                                                          
                                                                            [
                                                            Stack(
                                                              children: [
                                                                CarouselSlider(
                                                                  items: sliderPic
                                                                      .map((i) {
                                                                    return new Builder(builder:
                                                                        (BuildContext
                                                                            context) {
                                                                      return new Container(
                                                                        width: MediaQuery.of(
                                                                                context)
                                                                            .size
                                                                            .width,
                                                                        margin: new EdgeInsets
                                                                                .symmetric(
                                                                            horizontal:
                                                                                3.0),
                                                                        decoration:
                                                                            new BoxDecoration(
                                                                                color: Colors.white),
                                                                        child:
                                                                            new GestureDetector(
                                                                          child: Image
                                                                              .asset(i),
                                                                          onTap:
                                                                              () {},
                                                                        ),
                                                                      );
                                                                    });
                                                                  }).toList(),
                                                                  height: 150.0,
                                                                  autoPlay: true,
                                                                  onPageChanged:
                                                                      (value) {
                                                                    setState(() {
                                                                      pageIndex =
                                                                          value;
                                                                    });
                                                                  },
                                                                ),
                                                                Container(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              10),
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      Container(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          borderRadius:
                                                                              BorderRadius.circular(2),
                                                                          color: Colors
                                                                              .grey,
                                                                        ),
                                                                        margin: EdgeInsets.only(
                                                                            right:
                                                                                30),
                                                                        padding:
                                                                            EdgeInsets.all(
                                                                                5),
                                                                        child:
                                                                            Text(
                                                                          "${pageIndex + 1}/${sliderPic.length}",
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.white),
                                                                        ),
                                                                      )
                                                                    ],
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                            SizedBox(
                                                              height: 10,
                                                            ),
                                                            CarouselIndicator(
                                                              count: sliderPic
                                                                  .length,
                                                              index: pageIndex,
                                                              color: Colors.grey,
                                                              activeColor:
                                                                  Colors.blue,
                                                              height: 7,
                                                              width: 7,
                                                            ),
                                                          ],
                                                        )
                                                      : Image.asset(
                                                          "${hennaList[index]['pic']}",
                                                          fit: BoxFit.cover,
                                                        ),
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    setState(() {
                                                      if (hennaList[index]
                                                              ['isList'] ==
                                                          true) {
                                                        if (hennaList[index]
                                                                ['isShowList'] ==
                                                            true) {
                                                          hennaList[index]
                                                                  ['isShowList'] =
                                                              false;
                                                        } else {
                                                          hennaList[index]
                                                                  ['isShowList'] =
                                                              true;
                                                        }
                                                      }
                                                    });
                                                  },
                                                  child: Container(
                                                    width: MediaQuery.of(context)
                                                        .size
                                                        .width,
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Flexible(
                                                          child: Container(
                                                            padding:
                                                                EdgeInsets.all(9),
                                                            child: Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Container(
                                                                  child: Text(
                                                                    "${hennaList[index]['name']}",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    style: TextStyle(
                                                                        color: Colors
                                                                            .grey,
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold,
                                                                        fontSize:
                                                                            15),
                                                                    maxLines: 2,
                                                                  ),
                                                                ),
                                                                hennaList[index][
                                                                            'isPrice'] ==
                                                                        true
                                                                    ? 
                                                                    Row(
                                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                      children: [
                                                                        Container(
                                                                            margin: EdgeInsets
                                                                                .only(
                                                                                    top: 5),
                                                                            child:
                                                                                Text(
                                                                              "${hennaList[index]['price']}",
                                                                              overflow:
                                                                                  TextOverflow.ellipsis,
                                                                              style: TextStyle(
                                                                                  color:
                                                                                      Colors.cyan[700],
                                                                                  fontWeight: FontWeight.normal,
                                                                                  fontSize: 16),
                                                                              maxLines:
                                                                                  2,
                                                                            ),
                                                                          ),
                                                                         Container(
                                                                           margin: EdgeInsets.only(left: 10),
                                                                           decoration: BoxDecoration(
                                                                             border: Border.all(
                                                                               width: 1,color: Colors.cyan[700]
                                                                             ),
                                                                             borderRadius: BorderRadius.circular(3)
                                                                           ),
                                                                           child: Row(
                                                                             children: [
                                                                               GestureDetector
                                                                                   (onTap: (){
                                                                                     setState(() {
                                                                                       if ((hennaList[index]['count']<=0)) {
                                                                                         hennaList[index]['count']=0;
                                                                                       }else{
                                                                                         hennaList[index]['count']--;
                                                                                       }
                                                                                     });
                                                                                   },
                                                                                   child: Padding(padding: 
                                                                                   EdgeInsets.all(5),
                                                                                   child: Icon(Icons.remove,color: Colors.cyan[700],size: 16,),
                                                                                   
                                                                                   ),
                                                                                   ),
                                                                               Container(
                                                                                 padding: EdgeInsets.all(5),
                                                                                 decoration: BoxDecoration(
                                                                                   color: Colors.white,  ),
                                                                                   child: Text("${hennaList[index]['count']}",
                                                                                   maxLines: 1,
                                                                                   overflow: TextOverflow.ellipsis,
                                                                                   style: TextStyle(
                                                                                     color: Colors.grey,
                                                                                     fontSize: 14
                                                                                   ),  
                                                                                   ), ),
                                                                                    Container(
                                                                                 child: GestureDetector
                                                                                 (onTap: (){
                                                                                   setState(() {
                                                                                     hennaList[index]['count']++; });
                                                                                 },
                                                                                 child: Padding(padding: EdgeInsets.all(5),
                                                                                 child: Icon(Icons.add,
                                                                                 size: 16,
                                                                                 color: Colors.cyan[700],   ),
                                                                                
                                                                                 ),),
                                                                               ),
                                                                                  

                                                                             ],
                                                                           ),
                                                                         )
                                                                      ],
                                                                    )
                                                                    : Container(),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        hennaList[index]
                                                                    ['isDrop'] ==
                                                                true
                                                            ? Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                        .all(5.0),
                                                                child: Icon(
                                                                  Icons
                                                                      .expand_more,
                                                                  color: Colors
                                                                      .cyan[700],
                                                                ),
                                                              )
                                                            : Container()
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                hennaList[index]['isShowList'] ==
                                                        true
                                                    ? hennaList[index]['isSliderList']
                                                ? Column(
                                                 
                                                    children:
                                                    List.generate(3, (index) {
                                                      return Container(child: Padding(padding: EdgeInsets.all(0),
                                                      child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                                                      children: [
                                                        Container(margin: EdgeInsets.only(top: 5,bottom: 5),
                                                        child: Card(elevation: 3,
                                                        child: Container(
                                                          // padding: EdgeInsets.only(top: 15,bottom: 15,left: 25,right: 15),
                                                          decoration: BoxDecoration(
                                                            color: Colors.white,
                                                          ),
                                                          child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,children: [
                                                              Column(
                                                                children: [
                                                                  Container(
                                                                    width: MediaQuery.of(context).size.width,
                                                                    padding: EdgeInsets.all(0),
                                                                    child: Column(
                                                                      children: [
                                                                        Container(
                                                                         
                                                                          child:  Stack(
                                                              children: [
                                                                CarouselSlider(
                                                                  items: sliderPic
                                                                      .map((i) {
                                                                    return new Builder(builder:
                                                                        (BuildContext
                                                                            context) {
                                                                      return new Container(
                                                                        width: MediaQuery.of(
                                                                                context)
                                                                            .size
                                                                            .width,
                                                                        margin: new EdgeInsets
                                                                                .symmetric(
                                                                            horizontal:
                                                                                3.0),
                                                                        decoration:
                                                                            new BoxDecoration(
                                                                                color: Colors.white),
                                                                        child:
                                                                            new GestureDetector(
                                                                          child: Image
                                                                              .asset(i),
                                                                          onTap:
                                                                              () {},
                                                                        ),
                                                                      );
                                                                    });
                                                                  }).toList(),
                                                                  height: 150.0,
                                                                  autoPlay: true,
                                                                  onPageChanged:
                                                                      (value) {
                                                                    setState(() {
                                                                      pageIndex =
                                                                          value;
                                                                    });
                                                                  },
                                                                ),
                                                                Container(
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(
                                                                              10),
                                                                  child: Row(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      Container(
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          borderRadius:
                                                                              BorderRadius.circular(2),
                                                                          color: Colors
                                                                              .grey,
                                                                        ),
                                                                        margin: EdgeInsets.only(
                                                                            right:
                                                                                30),
                                                                        padding:
                                                                            EdgeInsets.all(
                                                                                5),
                                                                        child:
                                                                            Text(
                                                                          "${pageIndex + 1}/${sliderPic.length}",
                                                                          style: TextStyle(
                                                                              color:
                                                                                  Colors.white),
                                                                        ),
                                                                      )
                                                                    ],
                                                                  ),
                                                                )
                                                              ],
                                                            ),
                                                            
                                                                        ),
                                                                        SizedBox(height: 10,),
                                                                         Container(
                                                                           margin: EdgeInsets.only(left: 10,right: 10,top: 5,bottom: 10),
                                                                           child: Column(
                                                                             
                                                                        // mainAxisAlignment: MainAxisAlignment.center,
                                                                             children: [
                                                                                
                                                                            // Padding(padding: EdgeInsets.only(left: 30,right: 40)),
                                                                               Container(
                                                                                // margin: EdgeInsets.only(left: 10),
                                                                                                      // padding: EdgeInsets.all(5),
                                                                                                      child: Text(
                                                                                                        "${combineList[index]['name']}",
                                                                                                        overflow: TextOverflow.ellipsis,
                                                                                                        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.normal, fontSize: 12),
                                                                                                        maxLines: 2,
                                                                                                      ),
                                                                                                    ),
                                                                                                    SizedBox(height: 10,),
                                                                                                     Row(
                                                                                                  
                                                                                                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                        children: [
                                                                                                          
                                                                                                          Container(
                                                                                                            padding: EdgeInsets.only(left: 20),
                                                                                                            // margin: EdgeInsets.only(left: 27,bottom: 30),
                                                                                                //  padding: EdgeInsets.all(15),
                                                                                                    child: Text(
                                                                                                          "${combineList[index]['price']}",
                                                                                                          overflow: TextOverflow.ellipsis,
                                                                                                          style: TextStyle(color: Colors.cyan[700], fontWeight: FontWeight.normal, fontSize: 16),
                                                                                                          maxLines: 2,
                                                                                                    ),
                                                                                                  ),
                                                                                                  
                                                                                                  Container(
                                                                                                    margin: EdgeInsets.only(right: 15),
                                                                                                    decoration: BoxDecoration(
                                                                                                      border: Border.all(color: Colors.cyan[700],width: 1),
                                                                                                      borderRadius: BorderRadius.circular(3)
                                                                                                    ),
                                                                                                    child: Row(
                                                                                                      children: [
                                                                                                             GestureDetector(
                                                                                                            onTap: (){
                                                                                                              setState(() {
                                                                                                                if (combineList[index]['count']<=0) {
                                                                                                                 combineList[index] ['count']=0;
                                                                                                                }else{
                                                                                                                  combineList[index]['count']--;
                                                                                                                }
                                                                                                              });
                                                                                                            },
                                                                                                            child: Padding(padding: EdgeInsets.all(5),
                                                                                                            child: Icon(Icons.remove,color: Colors.cyan[700],size: 16,),
                                                                                                            
                                                                                                            ),
                                                                                                          ),
                                                                                                     
                                                                                                        Container(
                                                                                                          padding:EdgeInsets.all(5),
                                                                                                          decoration: BoxDecoration(
                                                                                                           color: Colors.white, ),
                                                                                                           child: Text("${combineList[index]['count']}",
                                                                                                           maxLines: 1,
                                                                                                           overflow: TextOverflow.ellipsis,
                                                                                                           style: TextStyle(color: Colors.grey,
                                                                                                           fontSize: 14
                                                                                                           ),
                                                                                                           
                                                                                                           ),
                                                                                                          ),
                                                                                                          
                                                                                                        Container(
                                                                                                            child: GestureDetector(onTap: (){
                                                                                                              setState(() {
                                                                                                                combineList[index]['count']++;
                                                                                                              });
                                                                                                            },
                                                                                                            child: Padding(padding: EdgeInsets.all(5),
                                                                                                            child: Icon(Icons.add,size: 16,color: Colors.cyan[700],),
                                                                                                            ),
                                                                                                            
                                                                                                            
                                                                                                            ),
                                                                                                        ),
                                                                                                     
                                                                                                     
                                                                                                      ],
                                                                                                    ),
                                                                                                  )
                                                                                                  
                                                                                
                                                                                                        ],
                                                                                                      ),
                                                                                                    
                                                                             ],
                                                                           ),
                                                                         ),
                                                                          
                                                                      ],
                                                                    ),
                                                                  )
                                                                ],
                                                              )
                                                            ], ),
                                                            
                                                        ),
                                                        
                                                        
                                                        ),
                                                        
                                                        
                                                        
                                                        )
                                                      ],
                                                      
                                                      
                                                      
                                                      ),

                                                      
                                                      
                                                      
                                                      ));
                                                    })
                                                    
                                                   
                                                     
                                                    
                                                        
                                               
                                                  )
                                                :Column(
                                                            children:
                                                                List.generate(3,
                                                                    (index) {
                                                              return Container(
                                                                  child: Padding(
                                                                      padding:
                                                                          const EdgeInsets.all(
                                                                              8.0),
                                                                      child: Column(
                                                                          crossAxisAlignment:
                                                                              CrossAxisAlignment.center,
                                                                          children: [
                                                                            Container(
                                                                              margin:
                                                                                  EdgeInsets.only(top: 5, bottom: 5),
                                                                              child:
                                                                                  Card(
                                                                                elevation: 3,
                                                                                child: Container(
                                                                                  padding: EdgeInsets.all(15),
                                                                                  decoration: BoxDecoration(
                                                                                    color: Colors.white,
                                                                                  ),
                                                                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                                                                                    Column(
                                                                                      children: [
                                                                                        Container(
                                                                                            //  height: 200,
                                                                                            width: MediaQuery.of(context).size.width,
                                                                                            padding: EdgeInsets.all(10),
                                                                                            child: Column(
                                                                                              children: [
                                                                                                Container(
                                                                                                  child: Image.asset(
                                                                                                    "${bridalList[index]['pic']}",
                                                                                                    fit: BoxFit.cover,
                                                                                                  ),
                                                                                                ),
                                                                                                SizedBox(height: 10,),
                                                                                                Row(
                                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                                  children: [
                                                                                                    Container(
                                                                                                      margin: EdgeInsets.only(top: 10),
                                                                                                    //  margin: EdgeInsets.only(top: 5),
                                                                                                   //  padding: EdgeInsets.only(top: 10),
                                                                                                      child: Text(
                                                                                                        "${bridalList[index]['price']}",
                                                                                                        overflow: TextOverflow.ellipsis,
                                                                                                        style: TextStyle(color: Colors.cyan[700], fontWeight: FontWeight.normal, fontSize: 16),
                                                                                                        maxLines: 2,
                                                                                                      ),
                                                                                                    ),
                                                                                                    SizedBox(height: 10,),
                                                                                                   Container(
                                                                                                     decoration: BoxDecoration(
                                                                                                       border: Border.all(
                                                                                                         width: 1,color: Colors.cyan[700],  ),
                                                                                                         borderRadius: BorderRadius.circular(3)
                                                                                                     ),
                                                                                                     child: Row(
                                                                                                       children: [
                                                                                                        
                                                                                                           GestureDetector(
                                                                                                           onTap: (){
                                                                                                             setState(() {
                                                                                                               if(bridalList[index]['count']<=0){
                                                                                                                 bridalList[index]['count']=0; }
                                                                                                                 else{
                                                                                                                   bridalList[index]['count']--;
                                                                                                                 }
                                                                                                             });
                                                                                                           },
                                                                                                           child: Padding(padding: EdgeInsets.all(5),
                                                                                                           child: Icon(Icons.remove,color: Colors.cyan[700],size: 16,),
                                                                                                           
                                                                                                           ),
                                                                                                         ),
                                                                                                         
                                                                                                         Container(
                                                                                                           padding: EdgeInsets.all(5),
                                                                                                           decoration: BoxDecoration(
                                                                                                             color: Colors.white,),
                                                                                                             child: Text("${bridalList[index]['count']}",
                                                                                                             maxLines: 1,
                                                                                                             overflow: TextOverflow.ellipsis,
                                                                                                             style: TextStyle(color: Colors.grey,
                                                                                                             fontSize: 14,
                                                                                                             ),
                                                                                                             ),
                                                                                                         ),
                                                                                                          GestureDetector(
                                                                                                             onTap: (){
                                                                                                               setState(() {
                                                                                                                 
                                                                                                                 bridalList[index]['count']++;

                                                                                                               });
                                                                                                             },
                                                                                                             child: Padding(padding: EdgeInsets.all(5),
                                                                                                             child: Icon(Icons.add,color: Colors.cyan[700],
                                                                                                             size: 16,
                                                                                                             ),
                                                                                                             ),
                                                                                                           ),
                                                                                                        
                                                                                                       ],
                                                                                                     ),
                                                                                                   )
                                                                                                  ],
                                                                                                ),
                                                                                              ],
                                                                                            )),
                                                                                      ],
                                                                                    ),
                                                                                  ]),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ])));
                                                            }),
                                                          )
                                                    : Container(),
                                               
                                              ]),
                                        ),
                                      ),
                                    );
                                  }),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: Column(
                            children: [
                              // SizedBox(
                              //   height: 20,
                              // ),
                              Container(
                                
                                child: Column(
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                  children:
                                      List.generate(makeupList.length, (index) {
                                    return Container(
                                     
                                     padding: EdgeInsets.all(8),
                                     margin: EdgeInsets.only(bottom: 5),
                                     child: Card(
                                       elevation: 3,
                                       child: Container(
                                        padding: EdgeInsets.all(15),
                                          decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                       child: Column(
                                        
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                         
                                          Container(
                                           height: 200,
                                            width:
                                                MediaQuery.of(context).size.width,
                                            child: Image.asset(
                                              "${makeupList[index]['pic']}",
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          SizedBox(  height: 10,
                                          ),
                                          Container(
                                            child: Text(
                                              "${makeupList[index]['name']}",
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15),
                                            ),
                                            
                                          ),
                                          Container(
                                            child: Text(
                                              "${makeupList[index]['desc']}",
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 12),
                                            ),
                                          ),
                                          SizedBox(height:5,),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                                            margin: EdgeInsets
                                                                                .only(
                                                                                    top: 5),
                                                                            child:
                                                                                Text(
                                                                              "${makeupList[index]['price']}",
                                                                              overflow:
                                                                                  TextOverflow.ellipsis,
                                                                              style: TextStyle(
                                                                                  color:
                                                                                      Colors.cyan[700],
                                                                                  fontWeight: FontWeight.normal,
                                                                                  fontSize: 16),
                                                                              maxLines:
                                                                                  2,
                                                                            ),
                                                                          ),
                                                           Container(
                                                             decoration: BoxDecoration(
                                                               border: Border.all(
                                                                 width: 1,color: Colors.cyan[700], ),
                                                                 borderRadius: BorderRadius.circular(3)
                                                             ),
                                                             child: Row(
                                                               children: [
                                                                 Container(
                                                                   child: GestureDetector(
                                                                     onTap: (){
                                                                       setState(() {
                                                                         makeupList[index]['count']++;
                                                                       });
                                                                     },
                                                                     child: Padding(padding:EdgeInsets.all(5) ,
                                                                     child: Icon(Icons.add,size: 16,color: Colors.cyan[700],),
                                                                     ),
                                                                   ),
                                                                 ),
                                                                 Container(
                                                                   padding: EdgeInsets.all(5),
                                                                   decoration: BoxDecoration(
                                                                     color: Colors.white,),
                                                                     child: Text("${makeupList[index]['count']}",
                                                                     maxLines: 1,
                                                                     overflow: TextOverflow.ellipsis,
                                                                     style: TextStyle(color: Colors.grey,
                                                                     fontSize: 14
                                                                     ),
                                                                    
                                                                     ),
                                                                 ),
                                                                 GestureDetector(
                                                                   onTap: (){
                                                                     setState(() {
                                                                       if ((makeupList[index]['count']<=0)) {
                                                                         makeupList[index]['count']=0;
                                                                          }else{
                                                                            makeupList[index]['count']--;
                                                                          }
                                                                     });
                                                                   },
                                                                   child: Padding(padding: EdgeInsets.all(5),
                                                                   child: Icon(Icons.remove,color: Colors.cyan[700],size: 16,),
                                                                   
                                                                   ),
                                                                 )
                                                               ],
                                                             ),
                                                           )
                                            ],
                                          ),
                                       
                                        ],
                                      ),
                                      
                                       ),
                                     ),
                                    
                                    );
                                  }),
                                ),
                              ),
                            ],
                          ),
                        ),
                           SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: Column(
                            children: [
                              // SizedBox(
                              //   height: 20,
                              // ),
                              Container(
                                
                                child: Column(
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                  children:
                                      List.generate(coneList.length, (index) {
                                    return Container(
                                     
                                     padding: EdgeInsets.all(8),
                                     margin: EdgeInsets.only(bottom: 5),
                                     child: Card(
                                       elevation: 3,
                                       child: Container(
                                        padding: EdgeInsets.all(15),
                                          decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                       child: Column(
                                        
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                         
                                          Container(
                                           height: 200,
                                            width:
                                                MediaQuery.of(context).size.width,
                                            child: Image.asset(
                                              "${coneList[index]['pic']}",
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                          Container(
                                            child: Text(
                                              "${coneList[index]['name']}",
                                              style: TextStyle(
                                                  color: Colors.grey,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15),
                                            ),
                                            
                                          ),
                                         
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                                            margin: EdgeInsets
                                                                                .only(
                                                                                    top: 5),
                                                                            child:
                                                                                Text(
                                                                              "${coneList[index]['price']}",
                                                                              overflow:
                                                                                  TextOverflow.ellipsis,
                                                                              style: TextStyle(
                                                                                  color:
                                                                                      Colors.cyan[700],
                                                                                  fontWeight: FontWeight.normal,
                                                                                  fontSize: 16),
                                                                              maxLines:
                                                                                  2,
                                                                            ),
                                                                          ),
                                                                            Container(
                                                                              decoration: BoxDecoration(
                                                                                border: Border.all(
                                                                                  width: 1,color: Colors.cyan[700]
                                                                                ),
                                                                                borderRadius: BorderRadius.circular(3)
                                                                              ),
                                                                              child: Row(
                                                                                children: [
                                                                                  Container(
                                                                                    child: GestureDetector(
                                                                                      onTap: (){
                                                                                        setState(() {
                                                                                          coneList[index]['count']++;
                                                                                        });
                                                                                      },
                                                                                      child: Padding(padding: EdgeInsets.all(5),
                                                                                      child: Icon(Icons.add,color: Colors.cyan[700],size: 16,),
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                  Container(
                                                                                    padding: EdgeInsets.all(5),
                                                                                    decoration: BoxDecoration(
                                                                                      color: Colors.white,  ),
                                                                                      child: Text("${coneList[index]['count']}",
                                                                                      maxLines: 1,
                                                                                      overflow: TextOverflow.ellipsis,
                                                                                      style: TextStyle(
                                                                                        color: Colors.grey,
                                                                                        fontSize: 14
                                                                                      ),  ),
                                                                                  ),
                                                                                  GestureDetector(
                                                                                    onTap: (){
                                                                                      setState(() {
                                                                                        if (coneList[index]['count']<=0) {
                                                                                          coneList[index]['count']=0;
                                                                                          
                                                                                        }else{
                                                                                          coneList[index]['count']--;
                                                                                        }
                                                                                      });
                                                                                    },
                                                                                    child: Padding(padding: EdgeInsets.all(5),
                                                                                    child: Icon(Icons.remove,color: Colors.cyan[700],size: 16,),
                                                                                    ),
                                                                                  )
                                                                                ],
                                                                              ),
                                                                            )
                                            ],
                                          ),
                                       
                                        ],
                                      ),
                                      
                                       ),
                                     ),
                                    
                                    );
                                  }),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SingleChildScrollView(
                          physics: BouncingScrollPhysics(),
                          child: Column(
                            children: [
                              // SizedBox(
                              //   height: 20,
                              // ),
                              Container(
                                
                                child: Column(
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                  children:
                                      List.generate(offerList.length, (index) {
                                    return Container(
                                     
                                     padding: EdgeInsets.all(8),
                                     margin: EdgeInsets.only(bottom: 5),
                                     child: Card(
                                       elevation: 3,
                                       child: Container(
                                        padding: EdgeInsets.all(15),
                                          decoration: BoxDecoration(
                                        color: Colors.white,
                                      ),
                                       child: Column(
                                        
                                         crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                         
                                          Container(
                                           height: 200,
                                            width:
                                                MediaQuery.of(context).size.width,
                                            child: Image.asset(
                                              "${offerList[index]['pic']}",
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 10,
                                          ),
                                        
                                         
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                                            margin: EdgeInsets
                                                                                .only(
                                                                                    top: 5),
                                                                            child:
                                                                                Text(
                                                                              "${offerList[index]['desc']}",
                                                                              overflow:
                                                                                  TextOverflow.ellipsis,
                                                                              style: TextStyle(
                                                                                  color:
                                                                                      Colors.cyan[700],
                                                                                  fontWeight: FontWeight.normal,
                                                                                  fontSize: 14),
                                                                              maxLines:
                                                                                  2,
                                                                            ),
                                                                          ),
                                                                          Container(
                                                                            decoration: BoxDecoration(
                                                                              border: Border.all(
                                                                                width: 1,
                                                                                color: Colors.cyan[700]
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(3)
                                                                            ),
                                                                            child: Row(
                                                                              children: [
                                                                                Container(
                                                                                  child: GestureDetector(
                                                                                    onTap: (){
                                                                                      setState(() {
                                                                                        offerList[index]['count']++;

                                                                                      });
                                                                                    },
                                                                                    child: Padding(padding: EdgeInsets.all(5),
                                                                                    child: Icon(Icons.add,color: Colors.cyan[700],size: 16,),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                                Container(
                                                                                  padding: EdgeInsets.all(5),
                                                                                  decoration: BoxDecoration(
                                                                                    color: Colors.white,

                                                                                  ),
                                                                                  child: Text("${hennaList[index]['count']}",
                                                                                  maxLines: 1,
                                                                                  overflow: TextOverflow.ellipsis,
                                                                                  style: TextStyle(
                                                                                    color: Colors.grey,
                                                                                    fontSize: 14
                                                                                  ),
                                                                                  ),
                                                                                ),
                                                                                GestureDetector(
                                                                                  onTap: (){
                                                                                    setState(() {
                                                                                      if (hennaList[index]['count']<=0) {
                                                                                        hennaList[index]['count']=0;

                                                                                        
                                                                                      }else{
                                                                                        hennaList[index]['count']--;
                                                                                      }
                                                                                    });
                                                                                  },
                                                                                  child: Padding(padding: EdgeInsets.all(5),
                                                                                  child: Icon(Icons.remove,color: Colors.cyan[700],size: 16,),
                                                                                  ),
                                                                                )
                                                                              ],
                                                                            ),
                                                                          )
                                            ],
                                          ),
                                       
                                        ],
                                      ),
                                      
                                       ),
                                     ),
                                    
                                    );
                                  }),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
              )),
         ),
         
 
    
        )),
        
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
                        GestureDetector(
                          onTap: (){
                            setState(() {
                              Navigator.push(context, 
                              MaterialPageRoute(builder: (context)=>Loginpage())
                              );
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.cyan[700],

                            ),
                            margin: EdgeInsets.only(left: 20),
                            padding: EdgeInsets.only(left: 30,right: 30,top:7,bottom: 7),
                            child: Text("Login",style: TextStyle(color: Colors.white,fontSize: 14),),
                          ),
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
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.cyan[700],

                            ),
                            margin: EdgeInsets.only(left: 20),
                            padding: EdgeInsets.only(left: 30,right: 30,top: 7,bottom: 7),
                            child: Text("Register",style: TextStyle(color: Colors.white,fontSize: 14),),
                        ),
                         ),
                      ],
                    ),
                    SizedBox(height:15,),
                    Divider(),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          Navigator.pop(context);
                        });
                      },
                      child: 
                      Container(
                     //   margin: EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                          color: Colors.cyan.withOpacity(0.1),
                         
                        ),
                        child: Row(
                      
                        //  mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                          
                           Padding(padding: EdgeInsets.only(top: 20,bottom: 20,)),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Icon(Icons.home,color: Colors.cyan[700],size: 20,),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Text("Home",style: TextStyle(color: Colors.cyan[700],fontSize: 16,fontWeight: FontWeight.normal),)
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
                    
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          Navigator.push(context, 
                          MaterialPageRoute(builder: (context)=>Loginpage())
                          );
                        });
                      },
                      child: Container(
                        
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.cyan[700],

                            ),
                            margin: EdgeInsets.only(right:160),
                            padding: EdgeInsets.only(left: 30,right: 30,top: 10,bottom: 10),
                            child: Text("Logout",style: TextStyle(color: Colors.white,fontSize: 14),),
                          ),
                    ),
                   ],
                 ),
             ),
           ),
         ),
          
    
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.only(left: 20,right: 20),
          height: 50,
          color: Colors.cyan[700],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Text("Total-10,000/-",maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(color: Colors.white,fontSize: 14),
                ),
              ),
              GestureDetector(
                onTap: ()
                {
                  Navigator.push(context, 
                  MaterialPageRoute(builder: (context)=>Loginpage()

                  ));
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: Padding(padding: EdgeInsets.only(left: 15,right: 15,top: 5,bottom: 5),
                  child: Row(
                    children: [
                      Container(
                        child: Text("Next",maxLines: 1,overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.cyan[700],fontSize: 10) ,

                        ),
                      ),
                      Icon(Icons.chevron_right,size: 18,color: Colors.cyan[700],)
                    ],
                  ),
                  ),
                ),
              )
            ],
          ),
        ),
        ); 
      
}
}