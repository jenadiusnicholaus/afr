import 'package:afr/common/baseappbar.dart';
import 'package:afr/pages/Group/create_group.dart';
import 'package:afr/pages/Group/discoverGroup.dart';
import 'package:afr/pages/Group/group_details.dart';
import 'package:afr/pages/Group/yourGroups.dart';
import 'package:afr/widgets/menuHolderwidget.dart';
import 'package:flutter/material.dart';

class GroupPage extends StatefulWidget {
  @override
  _GroupPageState createState() => _GroupPageState();
}

class _GroupPageState extends State<GroupPage> {
  bool showingYourgroup = false;
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
                          height: 50,
                          width: double.infinity,
                          margin:
                              EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    showingYourgroup = true;
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  decoration: BoxDecoration(
                                      color: Colors.red.withOpacity(.9),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Text(
                                    'your group',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    showingYourgroup = false;
                                  });
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  decoration: BoxDecoration(
                                      color: Theme.of(context).primaryColor,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Text(
                                    'Discover',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        !showingYourgroup ? DiscoverGroup() : YouGroup(),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute<void>(
                                builder: (BuildContext context) =>
                                    CreateGroupDialog(),
                                fullscreenDialog: true,
                              ),
                            );
                          },
                          child: Container(
                            height: 40,
                            width: 150,
                            margin: EdgeInsets.only(bottom: 4),
                            padding: EdgeInsets.symmetric(horizontal: 4),
                            decoration: BoxDecoration(
                                // color: Colors.amber,
                                border: Border.all(
                                    color: Theme.of(context).primaryColor,
                                    width: 1),
                                borderRadius: BorderRadius.circular(5)),
                            child: Center(
                                child: Row(
                              children: [
                                Icon(Icons.group_outlined),
                                Text(
                                  'create group',
                                  style: TextStyle(
                                      fontSize: 15,
                                      color: Theme.of(context).primaryColor,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          ),
        ));
  }
}
