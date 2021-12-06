import 'package:afr/common/baseappbar.dart';
import 'package:afr/models/message.dart';
import 'package:afr/pages/messages/chats.dart';
import 'package:flutter/material.dart';

class MessagesPage extends StatefulWidget {
  @override
  _MessagesPageState createState() => _MessagesPageState();
}

class _MessagesPageState extends State<MessagesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BaseAppBar(),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: SingleChildScrollView(
                child: Container(
                  height: 688,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  // color: Colors.red,
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        // color: Colors.blue,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: messages.length,
                          itemBuilder: (BuildContext context, int index) {
                            var sms = messages[index];
                            return Container(
                              height: 79,
                              width: 97,
                              child: Column(
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        height: 80,
                                        width: 80,
                                        padding: EdgeInsets.all(3),
                                        decoration: BoxDecoration(
                                            // color: Colors.red,
                                            border: Border.all(
                                                color: Colors.purple, width: 3),
                                            borderRadius:
                                                BorderRadius.circular(100)),
                                        child: CircleAvatar(
                                          radius: 30,
                                          backgroundImage:
                                              AssetImage(sms.user.imageurl!),
                                        ),
                                      ),
                                      Positioned(
                                        right: 20,
                                        child: Container(
                                          height: 10,
                                          width: 10,
                                          padding: EdgeInsets.all(3),
                                          decoration: BoxDecoration(
                                              color: Colors.green,
                                              // border: Border.all(
                                              //     color: Colors.purple, width: 3),
                                              borderRadius:
                                                  BorderRadius.circular(100)),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(sms.user.name!)
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                      Expanded(
                        child: Container(
                          // color: Colors.blue,
                          child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: messages.length,
                            itemBuilder: (BuildContext context, int index) {
                              var sms = messages[index];
                              return Stack(children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) => Chats(
                                          chat: chats[index],
                                        ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    height: 100,
                                    color: Theme.of(context)
                                        .primaryColor
                                        .withOpacity(.2),
                                    width: double.infinity,
                                    margin: EdgeInsets.symmetric(vertical: 2),
                                    padding: EdgeInsets.symmetric(
                                        vertical: 24, horizontal: 10),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 30,
                                          backgroundImage:
                                              AssetImage(sms.user.imageurl!),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              sms.user.name!,
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              height: 4,
                                            ),
                                            Text(sms.massges),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 10,
                                  right: 3,
                                  child: Container(
                                    width: 150,
                                    height: 30,
                                    // color: Colors.blue,
                                    child: Column(
                                      children: [
                                        Text(sms.createdAt),
                                      ],
                                    ),
                                  ),
                                )
                              ]);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 40,
            color: Colors.purple,
            width: double.infinity,
          )
        ],
      ),
    );
  }
}
