import 'package:afr/common/baseappbar.dart';
import 'package:afr/pages/auth/loginpage.dart';

import 'package:afr/widgets/addpostmenuwidget.dart';
import 'package:afr/widgets/menuHolderwidget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

import 'pages/auth/otherAccount.dart';

void main() {
  String token;
  runApp(DevicePreview(
    enabled: !kReleaseMode,
    builder: (context) => MyApp(
      token: token = 'jlfgjkjishf',
    ),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final String? token;

  const MyApp({Key? key, this.token}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: DevicePreview.locale(context), // Add the locale here
      builder: DevicePreview.appBuilder, //
      title: 'afr',
      theme: ThemeData(
        primaryColor: Colors.green.shade900,
        primarySwatch: Colors.teal,
        // accentColor: Colors.white,
      ),
      home: token != null ? MyHomePage(title: 'Afr') : LoginPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(),
      body: Column(
        children: [
          MenuHolder(),
          Expanded(
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 2),
                height: MediaQuery.of(context).size.height,
                // color: Colors.blue,
                child: ListView.builder(
                  itemCount: 200,
                  itemBuilder: (BuildContext context, int index) {
                    return Stack(children: [
                      Container(
                        height: 300,
                        width: double.infinity,
                        margin:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        decoration: BoxDecoration(
                            // Theme.of(context).primaryColor.withOpacity(.2),
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(
                                color: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(.4))),
                        // padding: EdgeInsets.symmetric(horizontal: ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 3),
                                  decoration: BoxDecoration(
                                    // color: Theme.of(context).primaryColor,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                    ),
                                    // border: Border.all(
                                    //     color: Theme.of(context).primaryColor),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Container(
                                            height: 30,
                                            width: 30,
                                            decoration: BoxDecoration(
                                                // color: Colors.amber,
                                                border: Border.all(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 1),
                                                borderRadius:
                                                    BorderRadius.circular(20)),
                                            child: Icon(
                                              Icons.person_outline,
                                              size: 20,
                                              color: Theme.of(context)
                                                  .primaryColor,
                                            ),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  GestureDetector(
                                                    onTap: () {
                                                      Navigator.of(context).push(
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  OtherAccount()));
                                                    },
                                                    child: Text(
                                                      'Juma issac',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ),
                                                  Icon(
                                                    Icons.flag_outlined,
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                  )
                                                ],
                                              ),
                                              Text('Tanzania, moshi, kibosho',
                                                  style: TextStyle(
                                                      color: Colors.blueGrey,
                                                      fontWeight:
                                                          FontWeight.bold))
                                            ],
                                          )
                                        ],
                                      ),
                                      Expanded(
                                        child: Container(
                                          height: 40,
                                          width: 100,
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 5),
                                          child: Column(
                                            children: [
                                              Text('1 hrs ago'),
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: double.infinity,
                              height: 200,
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage("assets/images/pic1.jpeg"),
                                    fit: BoxFit.cover),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 20),
                              decoration: BoxDecoration(
                                  // color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20))),
                              height: 50,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 3),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            color: Theme.of(context)
                                                .primaryColor)),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Icon(Icons.favorite_outline),
                                        Text('677+')
                                      ],
                                    ),
                                  ),
                                  Text('J1 mac 27 ')
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 200,
                        child: Container(
                          height: 40,
                          width: 30,
                          padding: EdgeInsets.symmetric(horizontal: 3),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(child: Icon(Icons.more_vert)),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 130,
                        child: Container(
                          height: 40,
                          width: 30,
                          padding: EdgeInsets.symmetric(horizontal: 3),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(child: Text('78')),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        bottom: 70,
                        child: Container(
                          height: 40,
                          width: 30,
                          padding: EdgeInsets.symmetric(horizontal: 3),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(child: Text('77')),
                        ),
                      )
                    ]);
                  },
                )),
          ),
          AddPostWidget()
        ],
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: Icon(Icons.add),
      // ),
    );
  }
}
