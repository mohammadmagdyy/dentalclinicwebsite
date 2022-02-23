import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';

void main()async {

    runApp(MyApp());


}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mego clinic',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {






  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          backgroundColor: Colors.white70,
          automaticallyImplyLeading: false,

          title: Text('Mego Clinic'),
          centerTitle: true,
          actions:[
            IconButton(icon:Icon(Icons.filter_list),
                color:Colors.white),
            IconButton(icon:Icon(Icons.list),
                color:Colors.white
            )
          ]
        ),
        body:ListView(
            children:<Widget>[
              Padding(
                padding:EdgeInsets.only(left:25,right:25),
                child:Row(
                    children:<Widget>[


                      SizedBox(width:655),







                    ]

                ),


              ),
              SizedBox(height:50),
              Padding(
                  padding:EdgeInsets.only(left:25,right:25),
                  child:Row(
                      children:<Widget>[
                        Image(
                          image:AssetImage('images/dentalLogo.jpg'),
                          fit: BoxFit.cover,
                          width: 60.0,
                          height: 60.0,
                        ),
                        Text('Welcome to mego clinic',
                            textDirection:TextDirection.ltr,
                            style:TextStyle(
                                color:Colors.black,
                                fontSize:36,
                                fontStyle: FontStyle.italic
                            )
                        )


                      ]

                  )


              ),

              Container(

                  height:MediaQuery.of(context).size.height-35.0,
                  decoration:BoxDecoration(

                      color: Colors.white,
                      borderRadius: BorderRadius.only(topLeft:Radius.circular(130.0))
                  ),
                  child:ListView(

                      primary:false,
                      children:<Widget>[
                        Padding(
                            padding:EdgeInsets.only(left:25.0,right:25.0),
                            child:Container(
                                height:MediaQuery.of(context).size.height-35.0,
                                child:

                                Padding(
                                    padding:EdgeInsets.only(bottom:185,top:45),
                                    child:Container(
                                        child:ListView(
                                            children:<Widget>[
                                            
                                              myfood('images/shedule.jpg','clinic shedule','choose the date that fits you '),
                                              myfood('images/pay.png','payment','pay for the appointment')


                                            ]


                                        )

                                    )

                                )



                            )
                        )
                      ]
                  )
              )
            ]

        )

    );




  }

  Widget myfood(String img,String foodname,String price){
    return Padding(

      padding:EdgeInsets.only(left:32.0,right:15.0,top:20),
      child: InkWell(
          onTap:(){



          },
          child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:<Widget>[

                Hero(
                    tag:img,
                    child:Image(
                        image:   AssetImage(img),
                        fit: BoxFit.cover,
                        height:125.0,
                        width:125.0

                    )

                ),
                Column(

                  children: <Widget>[
                    Text(foodname,
                      textDirection: TextDirection.ltr,
                      style:TextStyle(
                          color:Colors.black,
                          fontSize:36,
                          fontStyle:FontStyle.italic
                      ),
                    ),
                    Text(price,
                      maxLines: 3,
                      textDirection: TextDirection.ltr,
                      style:TextStyle(
                        color:Colors.grey,
                        fontSize:25,

                      ),

                    )

                  ],



                ),

                IconButton(icon:Icon(Icons.add),
                    color:Colors.black,
                    onPressed:(){}
                ),

              ]


          )

      ),


    );



  }
}
