// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: const MyHomePage1(title: 'Clock App'),
    );
  }
}

class MyHomePage1 extends StatefulWidget {
  const MyHomePage1({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage1> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage1> {
  double sec = 1;
  Duration duration = Duration();

  @override
  void initState() {
    DateTime date = DateTime.now();
    duration = Duration(hours: date.hour, minutes: date.minute, seconds: date.second);
    setTime();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print((duration.inSeconds % 60)/60);
    return Scaffold(
      backgroundColor: Color(0xffe8e8e8),
      appBar: AppBar(

        title: Text(widget.title),
      ),

      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 300,
              width: 300,

              decoration: BoxDecoration(
                  color:  Color(0xff21287e),
                  shape: BoxShape.circle,
                  // boxShadow: [
                  //   BoxShadow(color: Colors.white, blurRadius: 15, offset: Offset(-10, -10)),
                  //   BoxShadow(color: Color(0xffdcdcdc), blurRadius: 15, offset: Offset(10, 10))
                  // ]
                ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 150),
                        child: Container(
                          height: 50,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color(0xff1c7c35),

                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: Container(
                              height: 50,
                              width: 40,
                              color: Colors.red,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10,left: 5),
                        child: Container(
                      height: 30,
                      width: 90,
                        decoration: BoxDecoration(
                          color: Color(0xff21287e),
                          border: Border.all(color: Colors.white,width: 1)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 9,left: 5),
                          child: Text("PETER ENGLAND",
                            style: TextStyle(color: Colors.white,fontSize: 10),),
                        )),
                      ),

                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:5,right: 80),
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white)
                      ),
                     child: Stack(
                       children: [
                         Transform.rotate(
                            angle: pi / 48 * (duration.inDays ),
                            child: Padding(
                              padding: const EdgeInsets.all(4.5),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Container(
                                      width: 2,
                                      decoration: BoxDecoration(color:  Color(0xcbf5ba47), borderRadius: BorderRadius.circular(10)),
                                    ),
                                  ),
                                  Expanded(
                                    child: SizedBox(),
                                  ),
                                ],
                              ),
                            ),
                          ),
                         Transform.rotate(
                           angle: pi / 12 * (0 * 2),
                           child: Padding(
                             padding: const EdgeInsets.all(1),
                             child: Column(
                               children: [
                                 Text("M",style: TextStyle(
                                     color: Colors.white,
                                     fontSize:  8
                                 ),),
                                 Spacer(),

                               ],
                             ),
                           ),
                         ),
                         Transform.rotate(
                           angle: pi / 12 * (0.5 * 3),
                           child: Padding(
                             padding: const EdgeInsets.all(2),
                             child: Column(
                               children: [

                                 Spacer(),
                                 Text("F",style: TextStyle(
                                     color: Colors.white,
                                     fontSize:  8
                                 ),),
                               ],
                             ),
                           ),
                         ),
                         Transform.rotate(
                           angle: pi / 12 * (1.3 * 3),
                           child: Padding(
                             padding: const EdgeInsets.all(2),
                             child: Column(
                               children: [
                                 Text("T",style: TextStyle(
                                     color: Colors.white,
                                     fontSize:  8
                                 ),),
                                 Spacer(),

                               ],
                             ),
                           ),
                         ),
                         Transform.rotate(
                           angle: pi / 12 * (1.5 * 3),
                           child: Padding(
                             padding: const EdgeInsets.all(2),
                             child: Column(
                               children: [

                                 Spacer(),
                                 Text("S",style: TextStyle(
                                     color: Colors.white,
                                     fontSize:  8
                                 ),),
                               ],
                             ),
                           ),
                         ),
                         Transform.rotate(
                           angle: pi / 12 * (2.4 * 3),
                           child: Padding(
                             padding: const EdgeInsets.all(2),
                             child: Column(
                               children: [
                                 Text("W",style: TextStyle(
                                     color: Colors.white,
                                     fontSize:  8
                                 ),),
                                 Spacer(),

                               ],
                             ),
                           ),
                         ),
                         Transform.rotate(
                           angle: pi / 12 * (2.8 * 3),
                           child: Padding(
                             padding: const EdgeInsets.all(2),
                             child: Column(
                               children: [

                                 Spacer(),
                                 Text("w",style: TextStyle(
                                     color: Colors.white,
                                     fontSize:  8
                                 ),),
                               ],
                             ),
                           ),
                         ),
                         Transform.rotate(
                           angle: pi / 12 * (3.4 * 3),
                           child: Padding(
                             padding: const EdgeInsets.all(2),
                             child: Column(
                               children: [
                                 Text("T",style: TextStyle(
                                     color: Colors.white,
                                     fontSize:  8
                                 ),),
                                 Spacer(),

                               ],
                             ),
                           ),
                         ),
                       ],
                     ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top:5,left: 80),
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,

                      ),
                      child: Stack(
                        children: [
                          Transform.rotate(

                            angle: pi / 48 * (duration.inHours *2),
                            child: Padding(
                              padding: const EdgeInsets.all(0),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Container(

                                      width: 2,
                                      decoration: BoxDecoration(color:  Color(0xcbf5ba47)),
                                    ),
                                  ),
                                  Expanded(
                                    child: SizedBox(),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          Transform.rotate(
                            angle: pi / 12 * (4 * 2),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 7),
                              child: Column(
                                children: [
                                  Transform(
                                    child:  new Text(
                                      "10",style: TextStyle(color: Colors.white,fontSize: 7),
                                    ),
                                    alignment: FractionalOffset.center,
                                    transform: new Matrix4.identity()
                                      ..rotateZ(240 * 3.1415927 / 180),
                                  ),

                                  Spacer()
                                ],
                              ),
                            ),
                          ),
                          Transform.rotate(
                            angle: pi / 12 * (2 * 2),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Column(
                                children: [
                                  Spacer(),
                                  Transform(
                                    child:  new Text(
                                      "21",style: TextStyle(color: Colors.white,fontSize: 7),
                                    ),
                                    alignment: FractionalOffset.center,
                                    transform: new Matrix4.identity()
                                      ..rotateZ(-60 * 3.1415927 / 180),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Transform.rotate(
                            angle: pi / 12 * (0 * 2),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Column(
                                children: [
                                  Text("31",style: TextStyle(
                                      color: Colors.white,fontSize: 7
                                  ),),
                                  Spacer(),

                                ],
                              ),
                            ),
                          ),

                          Transform.rotate(
                            angle: pi / 12 * (0.8 * 2),
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Column(
                                children: [
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                  Spacer(),
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Transform.rotate(
                            angle: pi / 12 * (1.6 * 2),
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Column(
                                children: [
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                  Spacer(),
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Transform.rotate(
                            angle: pi / 12 * (2.4 * 2),
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Column(
                                children: [
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                  Spacer(),
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Transform.rotate(
                            angle: pi / 12 * (3.2 * 2),
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Column(
                                children: [
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                  Spacer(),
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                ],
                              ),
                            ),
                          ),

                          Transform.rotate(
                            angle: pi / 12 * (4 * 2),
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Column(
                                children: [
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                  Spacer(),
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Transform.rotate(
                            angle: pi / 12 * (4.8 * 2),
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Column(
                                children: [
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                  Spacer(),
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Transform.rotate(
                            angle: pi / 12 * (5.6 * 2),
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Column(
                                children: [
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                  Spacer(),
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Transform.rotate(
                            angle: pi / 12 * (0 * 2),
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Column(
                                children: [
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                  Spacer(),
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top:100),
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,

                      ),
                      child: Stack(
                        children: [
                          Transform.rotate(

                            angle: pi / 48 * (duration.inHours *2),
                            child: Padding(
                              padding: const EdgeInsets.all(0),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Container(

                                      width: 2,
                                      decoration: BoxDecoration(color:  Color(0xcbf5ba47)),
                                    ),
                                  ),
                                  Expanded(
                                    child: SizedBox(),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          Transform.rotate(
                            angle: pi / 12 * (3 * 2),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 8,bottom: 5),
                              child: Column(
                                children: [
                                  Transform(
                                    child:  new Text(
                                      "06",style: TextStyle(color: Colors.white,fontSize: 7),
                                    ),
                                    alignment: FractionalOffset.center,
                                    transform: new Matrix4.identity()
                                      ..rotateZ(269 * 3.1415927 / 180),
                                  ),

                                  Spacer(),
                                  Transform(
                                    child:  new Text(
                                      "18",style: TextStyle(color: Colors.white,fontSize: 7),
                                    ),
                                    alignment: FractionalOffset.center,
                                    transform: new Matrix4.identity()
                                      ..rotateZ(269 * 3.1415927 / 180),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Transform.rotate(
                            angle: pi / 12 * (0 * 2),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 6,bottom: 6),
                              child: Column(
                                children: [
                                  Text("31",style: TextStyle(
                                      color: Colors.white,fontSize: 7
                                  ),),
                                  Spacer(),
                                  Text("12",style: TextStyle(
                                      color: Colors.white,fontSize: 7
                                  ),),
                                ],
                              ),
                            ),
                          ),

                          Transform.rotate(
                            angle: pi / 12 * (0.8 * 2),
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Column(
                                children: [
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                  Spacer(),
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Transform.rotate(
                            angle: pi / 12 * (1.6 * 2),
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Column(
                                children: [
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                  Spacer(),
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Transform.rotate(
                            angle: pi / 12 * (2.4 * 2),
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Column(
                                children: [
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                  Spacer(),
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Transform.rotate(
                            angle: pi / 12 * (3.2 * 2),
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Column(
                                children: [
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                  Spacer(),
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                ],
                              ),
                            ),
                          ),

                          Transform.rotate(
                            angle: pi / 12 * (4 * 2),
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Column(
                                children: [
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                  Spacer(),
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Transform.rotate(
                            angle: pi / 12 * (4.8 * 2),
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Column(
                                children: [
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                  Spacer(),
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Transform.rotate(
                            angle: pi / 12 * (5.6 * 2),
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Column(
                                children: [
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                  Spacer(),
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Transform.rotate(
                            angle: pi / 12 * (0 * 2),
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Column(
                                children: [
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                  Spacer(),
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),   Padding(
                    padding: const EdgeInsets.only(top:5,left: 80),
                    child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,

                      ),
                      child: Stack(
                        children: [
                          Transform.rotate(

                            angle: pi / 48 * (duration.inHours *2),
                            child: Padding(
                              padding: const EdgeInsets.all(0),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Container(

                                      width: 2,
                                      decoration: BoxDecoration(color:  Color(0xcbf5ba47)),
                                    ),
                                  ),
                                  Expanded(
                                    child: SizedBox(),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          Transform.rotate(
                            angle: pi / 12 * (4 * 2),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 7),
                              child: Column(
                                children: [
                                  Transform(
                                    child:  new Text(
                                      "10",style: TextStyle(color: Colors.white,fontSize: 7),
                                    ),
                                    alignment: FractionalOffset.center,
                                    transform: new Matrix4.identity()
                                      ..rotateZ(240 * 3.1415927 / 180),
                                  ),

                                  Spacer()
                                ],
                              ),
                            ),
                          ),
                          Transform.rotate(
                            angle: pi / 12 * (2 * 2),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Column(
                                children: [
                                  Spacer(),
                                  Transform(
                                    child:  new Text(
                                      "21",style: TextStyle(color: Colors.white,fontSize: 7),
                                    ),
                                    alignment: FractionalOffset.center,
                                    transform: new Matrix4.identity()
                                      ..rotateZ(-60 * 3.1415927 / 180),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Transform.rotate(
                            angle: pi / 12 * (0 * 2),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 6),
                              child: Column(
                                children: [
                                  Text("31",style: TextStyle(
                                      color: Colors.white,fontSize: 7
                                  ),),
                                  Spacer(),

                                ],
                              ),
                            ),
                          ),

                          Transform.rotate(
                            angle: pi / 12 * (0.8 * 2),
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Column(
                                children: [
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                  Spacer(),
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Transform.rotate(
                            angle: pi / 12 * (1.6 * 2),
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Column(
                                children: [
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                  Spacer(),
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Transform.rotate(
                            angle: pi / 12 * (2.4 * 2),
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Column(
                                children: [
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                  Spacer(),
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Transform.rotate(
                            angle: pi / 12 * (3.2 * 2),
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Column(
                                children: [
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                  Spacer(),
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                ],
                              ),
                            ),
                          ),

                          Transform.rotate(
                            angle: pi / 12 * (4 * 2),
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Column(
                                children: [
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                  Spacer(),
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Transform.rotate(
                            angle: pi / 12 * (4.8 * 2),
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Column(
                                children: [
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                  Spacer(),
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Transform.rotate(
                            angle: pi / 12 * (5.6 * 2),
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Column(
                                children: [
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                  Spacer(),
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                ],
                              ),
                            ),
                          ),
                          Transform.rotate(
                            angle: pi / 12 * (0 * 2),
                            child: Padding(
                              padding: const EdgeInsets.all(1.0),
                              child: Column(
                                children: [
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                  Spacer(),
                                  Container(
                                    width: 1.5,
                                    height: 4,
                                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                                  ),

                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Transform.rotate(
                    angle: pi / 12 * (duration.inHours * 2),
                    child: Padding(
                      padding: const EdgeInsets.all(80.0),
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              width: 6,
                              decoration: BoxDecoration(color:  Color(0xcbf5ba47), borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                          Expanded(
                            child: SizedBox(),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: pi / 60 * (duration.inMinutes * 2),
                    child: Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              width: 3,
                              decoration: BoxDecoration(color: Color(0xcbf5ba47), borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                          Expanded(
                            child: SizedBox(),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: pi / 60 * (duration.inSeconds * 2),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              width: 1,
                              decoration: BoxDecoration(color: Color(0xcbf5ba47), borderRadius: BorderRadius.circular(10)),
                            ),
                          ),
                          Expanded(
                            child: SizedBox(),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 10,
                    width: 10,
                    decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(10)),
                  ),
                  Transform.rotate(
                    angle: pi / 12 * (0 * 2),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text("XII",style: TextStyle(
                            color: Color(0xfff5ba47)
                          ),),
                          Spacer(),
                          Container(
                            width: 2,
                            height: 10,
                            decoration: BoxDecoration(color: Color(0xfff5ba47), borderRadius: BorderRadius.circular(10)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: pi / 12 * (3 * 2),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            width: 2,
                            height: 10,
                            decoration: BoxDecoration(color: Color(0xfff5ba47), borderRadius: BorderRadius.circular(10)),
                          ),
                          Spacer(),
                          Container(
                            width: 2,
                            height: 10,
                            decoration: BoxDecoration(color: Color(0xfff5ba47), borderRadius: BorderRadius.circular(10)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: pi / 12 * (1 * 2),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            width: 2,
                            height: 10,
                            decoration: BoxDecoration(color: Color(0xfff5ba47)),
                          ),
                          Spacer(),
                          Container(
                            width: 2,
                            height: 10,
                            decoration: BoxDecoration(color: Color(0xfff5ba47), borderRadius: BorderRadius.circular(10)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: pi / 12 * (2 * 2),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            width: 2,
                            height: 10,
                            decoration: BoxDecoration(color: Color(0xfff5ba47), borderRadius: BorderRadius.circular(10)),
                          ),
                          Spacer(),
                          Text("VII",style: TextStyle(
                              color: Color(0xfff5ba47)
                          ),),
                        ],
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: pi / 12 * (4 * 2),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                      Transform(
                      child:  new Text(
                        "IV",style: TextStyle(color: Color(0xfff5ba47)),
                      ),
                      alignment: FractionalOffset.center,
                      transform: new Matrix4.identity()
                        ..rotateZ(180 * 3.1415927 / 180),
                    ),

                          Spacer(),
                          Container(
                            width: 2,
                            height: 10,
                            decoration: BoxDecoration(color: Color(0xfff5ba47), borderRadius: BorderRadius.circular(10)),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Transform.rotate(
                    angle: pi / 12 * (4 * 2),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          Container(
                            width: 2,
                            height: 6,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                          Spacer(),
                          Container(
                            width: 2,
                            height: 6,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: pi / 12 * (5 * 2),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          Container(
                            width: 2,
                            height: 6,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                          Spacer(),
                          Container(
                            width: 2,
                            height: 6,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: pi / 12 * (6 * 2),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          Container(
                            width: 2,
                            height: 6,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                          Spacer(),
                          Container(
                            width: 2,
                            height: 6,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: pi / 12 * (2 * 2),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          Container(
                            width: 2,
                            height: 6,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                          Spacer(),
                          Container(
                            width: 2,
                            height: 6,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: pi / 12 * (3 * 2),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          Container(
                            width: 2,
                            height: 6,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                          Spacer(),
                          Container(
                            width: 2,
                            height: 6,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: pi / 12 * (1 * 2),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          Container(
                            width: 2,
                            height: 6,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                          Spacer(),
                          Container(
                            width: 2,
                            height: 6,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),
                        ],
                      ),
                    ),
                  ),

                  Transform.rotate(
                    angle: pi / 12 * (1.2 * 2),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                          Spacer(),
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                        ],
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: pi / 12 * (1.4 * 2),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                          Spacer(),
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                        ],
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: pi / 12 * (1.6 * 2),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                          Spacer(),
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                        ],
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: pi / 12 * (1.8 * 2),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                          Spacer(),
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                        ],
                      ),
                    ),
                  ),

                  Transform.rotate(
                    angle: pi / 12 * (0.2 * 2),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                          Spacer(),
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                        ],
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: pi / 12 * (0.4 * 2),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                          Spacer(),
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                        ],
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: pi / 12 * (0.6 * 2),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                          Spacer(),
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                        ],
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: pi / 12 * (0.8 * 2),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                          Spacer(),
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                        ],
                      ),
                    ),
                  ),

                  Transform.rotate(
                    angle: pi / 12 * (2.2 * 2),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                          Spacer(),
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                        ],
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: pi / 12 * (2.4 * 2),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                          Spacer(),
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                        ],
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: pi / 12 * (2.6 * 2),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                          Spacer(),
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                        ],
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: pi / 12 * (2.8 * 2),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                          Spacer(),
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                        ],
                      ),
                    ),
                  ),

                  Transform.rotate(
                    angle: pi / 12 * (3.2 * 2),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                          Spacer(),
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                        ],
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: pi / 12 * (3.4 * 2),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                          Spacer(),
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                        ],
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: pi / 12 * (3.6 * 2),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                          Spacer(),
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                        ],
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: pi / 12 * (3.8 * 2),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                          Spacer(),
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                        ],
                      ),
                    ),
                  ),

                  Transform.rotate(
                    angle: pi / 12 * (4.2 * 2),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                          Spacer(),
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                        ],
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: pi / 12 * (4.4 * 2),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                          Spacer(),
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                        ],
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: pi / 12 * (4.6 * 2),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                          Spacer(),
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                        ],
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: pi / 12 * (4.8 * 2),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                          Spacer(),
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                        ],
                      ),
                    ),
                  ),

                  Transform.rotate(
                    angle: pi / 12 * (5.2 * 2),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                          Spacer(),
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                        ],
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: pi / 12 * (5.4 * 2),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                          Spacer(),
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                        ],
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: pi / 12 * (5.6 * 2),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                          Spacer(),
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                        ],
                      ),
                    ),
                  ),
                  Transform.rotate(
                    angle: pi / 12 * (5.8 * 2),
                    child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Column(
                        children: [
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                          Spacer(),
                          Container(
                            width: 1.5,
                            height: 5,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                        ],
                      ),
                    ),
                  ),


                  Transform.rotate(
                    angle: pi / 12 * (5 * 2),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            width: 2,
                            height: 10,
                            decoration: BoxDecoration(color: Color(0xfff5ba47), borderRadius: BorderRadius.circular(10)),
                          ),
                          Spacer(),
                          Container(
                            width: 2,
                            height: 10,
                            decoration: BoxDecoration(color: Color(0xfff5ba47), borderRadius: BorderRadius.circular(10)),
                          ),
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "${duration.inHours} : ${duration.inMinutes % 60} : ${duration.inSeconds % 60}",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),

    );
  }

  void setTime() {
    Future.delayed(
      Duration(seconds: 1),
          () {
        DateTime date = DateTime.now();
        duration = Duration(hours: date.hour, minutes: date.minute, seconds: date.second);
        print(duration);
        setState(() {});
        setTime();
      },
    );
  }
}
