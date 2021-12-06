import 'package:afr/common/baseappbar.dart';
import 'package:afr/pages/Group/group.dart';
import 'package:afr/pages/Group/group_details.dart';
import 'package:afr/widgets/menuHolderwidget.dart';
import 'package:flutter/material.dart';

class NotifaicationPage extends StatefulWidget {
  @override
  _NotifaicationPageState createState() => _NotifaicationPageState();
}

class _NotifaicationPageState extends State<NotifaicationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: BaseAppBar(),
        body: Container(
          child: Column(
            children: [
              MenuHolder(),
              Expanded(
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 2),
                    height: MediaQuery.of(context).size.height,
                    // color: Colors.blue,
                    child: Column(
                      children: [
                        Container(
                          height: 30,
                          child: Center(child: Text('People ollowing you')),
                        ),
                        Container(
                          height: 200,
                          width: double.infinity,
                          margin:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 1),
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Container(
                            height: 200,
                            child: ListView.builder(
                              itemCount: 200,
                              itemBuilder: (BuildContext context, int index) {
                                return GestureDetector(
                                  onTap: () {
                                    // Go into some where
                                  },
                                  child: Container(
                                    height: 90,
                                    width: double.infinity,
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 5),
                                    margin: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 10),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            color: Theme.of(context)
                                                .primaryColor
                                                .withOpacity(.4))),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              vertical: 21),
                                          // color: Colors.red,
                                          child: Row(
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              GroupPage()));
                                                },
                                                child: Container(
                                                  height: 30,
                                                  width: 30,
                                                  decoration: BoxDecoration(
                                                      // color: Colors.amber,
                                                      border: Border.all(
                                                          color:
                                                              Theme.of(context)
                                                                  .primaryColor,
                                                          width: 1),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20)),
                                                  child: Icon(
                                                    Icons.person_outline,
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'User name',
                                                    style: TextStyle(
                                                        fontSize: 17,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                      '123 er',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            // go into some where
                                          },
                                          child: Container(
                                            width: 140,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Expanded(
                                                  child: Container(
                                                    height: 30,
                                                    width: 69,
                                                    decoration: BoxDecoration(
                                                        // color: Colors.amber,
                                                        border: Border.all(
                                                            color: Theme.of(
                                                                    context)
                                                                .primaryColor,
                                                            width: 1),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5)),
                                                    child: Center(
                                                        child: Text(
                                                      'reject',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color:
                                                              Theme.of(context)
                                                                  .primaryColor,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    )),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: Container(
                                                    height: 30,
                                                    width: 69,
                                                    decoration: BoxDecoration(
                                                        // color: Colors.amber,
                                                        border: Border.all(
                                                            color: Theme.of(
                                                                    context)
                                                                .primaryColor,
                                                            width: 1),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(5)),
                                                    child: Center(
                                                        child: Text(
                                                      ' accept',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          color:
                                                              Theme.of(context)
                                                                  .primaryColor,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    )),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        Divider(
                          height: 3,
                          thickness: 1,
                          color: Theme.of(context).accentColor,
                        ),
                        Container(
                          height: 30,
                          child: Center(child: Text('People you may know')),
                        ),
                        Divider(
                          height: 3,
                          thickness: 1,
                          color: Theme.of(context).accentColor,
                        ),
                        Expanded(
                          child: Container(
                            height: 200,
                            child: ListView.builder(
                              itemCount: 200,
                              itemBuilder: (BuildContext context, int index) {
                                return GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                GroupDetails()));
                                  },
                                  child: Container(
                                    height: 90,
                                    width: double.infinity,
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 4),
                                    margin: EdgeInsets.symmetric(
                                        vertical: 5, horizontal: 10),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            color: Theme.of(context)
                                                .primaryColor
                                                .withOpacity(.4))),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 2, vertical: 21),
                                          // color: Colors.red,
                                          child: Row(
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              GroupPage()));
                                                },
                                                child: Container(
                                                  height: 30,
                                                  width: 30,
                                                  decoration: BoxDecoration(
                                                      // color: Colors.amber,
                                                      border: Border.all(
                                                          color:
                                                              Theme.of(context)
                                                                  .primaryColor,
                                                          width: 1),
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              20)),
                                                  child: Icon(
                                                    Icons.person_outline,
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'User name add flag',
                                                    style: TextStyle(
                                                        fontSize: 17,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Expanded(
                                                    child: Text(
                                                      '123 followers',
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  )
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        GroupPage()));
                                          },
                                          child: Container(
                                            height: 30,
                                            width: 65,
                                            decoration: BoxDecoration(
                                                // color: Colors.amber,
                                                border: Border.all(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    width: 1),
                                                borderRadius:
                                                    BorderRadius.circular(5)),
                                            child: Center(
                                                child: Text(
                                              ' Follow',
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        // GestureDetector(
                        //   onTap: () {
                        //     Navigator.push(
                        //         context,
                        //         MaterialPageRoute(
                        //             builder: (context) => GroupPage()));
                        //   },
                        //   child: Container(
                        //     height: 40,
                        //     width: 150,
                        //     margin: EdgeInsets.only(bottom: 4),
                        //     padding: EdgeInsets.symmetric(horizontal: 4),
                        //     decoration: BoxDecoration(
                        //         // color: Colors.amber,
                        //         border: Border.all(
                        //             color: Theme.of(context).primaryColor,
                        //             width: 1),
                        //         borderRadius: BorderRadius.circular(5)),
                        //     child: Center(
                        //         child: Row(
                        //       children: [
                        //         Icon(Icons.group_outlined),
                        //         Text(
                        //           'create group',
                        //           style: TextStyle(
                        //               fontSize: 15,
                        //               color: Theme.of(context).primaryColor,
                        //               fontWeight: FontWeight.bold),
                        //         ),
                        //       ],
                        //     )),
                        //   ),
                        // ),
                      ],
                    )),
              ),
            ],
          ),
        ));
  }
}
