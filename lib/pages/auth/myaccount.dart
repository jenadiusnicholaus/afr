import 'package:afr/common/baseappbar.dart';
import 'package:afr/pages/Group/widgets.dart';
import 'package:afr/widgets/editProfile.dart';
import 'package:flutter/material.dart';

class MyAccount extends StatefulWidget {
  @override
  _MyAccountState createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  _decoration() {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 1, color: Theme.of(context).primaryColor));
  }

  EdgeInsets mypadding = EdgeInsets.all(8.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              // color: Colors.redAccent,

              child: Column(
                children: [
                  Container(
                    color: Theme.of(context).primaryColor.withOpacity(.4),
                    width: double.infinity,
                    padding: EdgeInsets.only(top: 30),
                    child: Center(
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage:
                                AssetImage("assets/images/ppic2.jpeg"),
                          ),
                          Text(
                            'my name',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                  followingContainer(
                      context: context,
                      mypadding: mypadding,
                      decoration: _decoration()),
                  followingContainer(
                      context: context,
                      mypadding: mypadding,
                      decoration: _decoration()),
                  Expanded(
                    child: Container(
                        width: double.infinity,
                        padding:
                            EdgeInsets.symmetric(horizontal: 1, vertical: 10),
                        height: 300,
                        // color: Colors.red,
                        child: GridView.builder(
                          itemCount: 10,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 4.0,
                                  mainAxisSpacing: 4.0),
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              height: 100,
                              width: 200,
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
                                                      BorderRadius.circular(
                                                          20)),
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
                                  Container(
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
          ),
          EditProfileWidget()
        ],
      ),
    );
  }
}
