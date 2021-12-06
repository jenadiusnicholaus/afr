import 'package:afr/common/baseappbar.dart';
import 'package:afr/widgets/addpostmenuwidget.dart';
import 'package:flutter/material.dart';

class GroupDetails extends StatefulWidget {
  @override
  _GroupDetailsState createState() => _GroupDetailsState();
}

class _GroupDetailsState extends State<GroupDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(),
      body: SingleChildScrollView(
        child: Container(
          height: 700,
          width: double.infinity,
          // color: Colors.indigoAccent,
          child: Column(
            children: [
              Container(
                height: 140,
                // color: Colors.indigo,
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor.withOpacity(.4)),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/groupicon.jpeg'),
                      radius: 30,
                    ),
                    Text('Group name',
                        style: TextStyle(
                            fontSize: 30,
                            // color: Colors.white,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 56.0,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                    // color: Colors.amber,
                    border: Border.all(
                        color: Theme.of(context).primaryColor.withOpacity(.1),
                        width: 1),
                    borderRadius: BorderRadius.circular(1)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          // color: Colors.amber,
                          border: Border.all(
                              color: Theme.of(context).primaryColor, width: 1),
                          borderRadius: BorderRadius.circular(20)),
                      child: Icon(
                        Icons.more_vert,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) => GroupPage()));
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            // color: Colors.amber,
                            border: Border.all(
                                color: Theme.of(context).primaryColor,
                                width: 1),
                            borderRadius: BorderRadius.circular(20)),
                        child: Icon(
                          Icons.info_sharp,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                    ),
                    Container(
                        height: 30,
                        width: 100,
                        child: Center(
                            child: Text('6746 k',
                                style: TextStyle(
                                    fontSize: 16,
                                    // color: Colors.white,
                                    fontWeight: FontWeight.bold)))),
                    Container(
                      height: 30,
                      width: 30,
                    ),
                    Container(
                      height: 30,
                      width: 30,
                    ),
                  ],
                ),
              ),
              Container(
                // color: Colors.indigoAccent,
                padding: EdgeInsets.symmetric(vertical: 20),
                height: 130,
                width: double.infinity,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        decoration: BoxDecoration(
                            color:
                                Theme.of(context).primaryColor.withOpacity(.2),
                            border: Border.all(
                                color: Theme.of(context)
                                    .primaryColor
                                    .withOpacity(.4),
                                width: 1),
                            borderRadius: BorderRadius.circular(100)),
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                            Stack(children: [
                              CircleAvatar(
                                backgroundImage:
                                    AssetImage('assets/images/ppic.jpg'),
                                radius: 20,
                              ),
                              Positioned(
                                right: 0.0,
                                bottom: 0.0,
                                child: Container(
                                  height: 10,
                                  width: 10,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      border: Border.all(
                                          color: Theme.of(context)
                                              .primaryColor
                                              .withOpacity(.4),
                                          width: 1),
                                      borderRadius: BorderRadius.circular(100)),
                                ),
                              )
                            ]),
                            Text(
                              'Members',
                              style: TextStyle(
                                  fontSize: 16,
                                  // color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      );
                    }),
              ),
              Expanded(
                child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.symmetric(horizontal: 1, vertical: 10),
                    height: 300,
                    // color: Colors.red,
                    child: GridView.builder(
                      itemCount: 10,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 2.0,
                          mainAxisSpacing: 2.0),
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                  color: Theme.of(context)
                                      .primaryColor
                                      .withOpacity(.4))),
                          child: Column(
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
                                            color:
                                                Theme.of(context).primaryColor,
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
                                                Text(
                                                  'Juma issac',
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Icon(
                                                  Icons.flag_outlined,
                                                  color: Theme.of(context)
                                                      .primaryColor,
                                                )
                                              ],
                                            ),
                                            Text('Tanzania, moshi,',
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
                                        height: 50,
                                        width: 100,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 2, vertical: 3),
                                        child: Column(
                                          children: [
                                            Text('1hrs'),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  height: 100,
                                  // color: Colors.red,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/pic1.jpeg'),
                                    fit: BoxFit.cover,
                                  )),
                                ),
                              ),
                              Container(
                                height: 30,
                                // color: Colors.red,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(13),
                                        bottomRight: Radius.circular(13))),
                              )
                            ],
                          ),
                        );
                      },
                    )),
              ),
              AddPostWidget()
            ],
          ),
        ),
      ),
    );
  }
}
