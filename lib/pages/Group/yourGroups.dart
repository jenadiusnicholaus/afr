import 'package:afr/pages/Group/group_details.dart';
import 'package:flutter/material.dart';

class YouGroup extends StatefulWidget {
  @override
  _YouGroupState createState() => _YouGroupState();
}

class _YouGroupState extends State<YouGroup> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 300,
        // color: Colors.amber,
        width: double.infinity,
        child: Column(
          children: [
            Container(
              height: 100,
              // color: Colors.blue,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 70,
                      width: 100,
                      child: Icon(
                        Icons.group_outlined,
                        size: 46,
                        color: Theme.of(context).primaryColor,
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 4),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 2,
                              color: Theme.of(context)
                                  .primaryColor
                                  .withOpacity(.4)),
                          color: Theme.of(context).primaryColor.withOpacity(.2),
                          borderRadius: BorderRadius.circular(100)),
                    );
                  }),
            ),
            Expanded(
              child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  height: 300,
                  // color: Colors.red,
                  child: GridView.builder(
                    itemCount: 10,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 1.0,
                        mainAxisSpacing: 1.0),
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 80,
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
                                  horizontal: 1, vertical: 3),
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
                                          Icons.group_outlined,
                                          size: 20,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Wrap(
                                            children: [
                                              GestureDetector(
                                                onTap: () {
                                                  Navigator.of(context).push(
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              GroupDetails()));
                                                },
                                                child: Text(
                                                  'Group Name',
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
                                          Text(
                                            'Tanzania, moshi,',
                                            style: TextStyle(
                                                color: Colors.blueGrey,
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                  // Container(
                                  //   width: 50,
                                  //   padding: EdgeInsets.symmetric(
                                  //       horizontal: 1, vertical: 3),
                                  //   child: Column(
                                  //     children: [
                                  //       Text('1hrs'),
                                  //     ],
                                  //   ),
                                  // )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(
                                // color: Colors.red,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  image: AssetImage('assets/images/pic1.jpeg'),
                                  fit: BoxFit.fill,
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
          ],
        ),
      ),
    );
  }
}
