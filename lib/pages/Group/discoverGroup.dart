import 'package:afr/pages/Group/group.dart';
import 'package:afr/pages/Group/group_details.dart';
import 'package:flutter/material.dart';

class DiscoverGroup extends StatefulWidget {
  @override
  _DiscoverGroupState createState() => _DiscoverGroupState();
}

class _DiscoverGroupState extends State<DiscoverGroup> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 200,
        child: ListView.builder(
          itemCount: 100,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GroupDetails()));
              },
              child: Container(
                height: 90,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 20),
                margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                        color: Theme.of(context).primaryColor.withOpacity(.4))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 21),
                      // color: Colors.red,
                      child: Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => GroupPage()));
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
                                Icons.group_outlined,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: [
                              Text(
                                'Group name',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                child: Text(
                                  'Groub name',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
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
                                builder: (context) => GroupPage()));
                      },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            // color: Colors.amber,
                            border: Border.all(
                                color: Theme.of(context).primaryColor,
                                width: 1),
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                            child: Text(
                          'F',
                          style: TextStyle(
                              fontSize: 15,
                              color: Theme.of(context).primaryColor,
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
    );
  }
}
