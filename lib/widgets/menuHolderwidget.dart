import 'package:afr/pages/Group/group.dart';
import 'package:afr/pages/messages/messagespage.dart';
import 'package:afr/pages/notification/notifaication.dart';
import 'package:flutter/material.dart';

class MenuHolder extends StatefulWidget {
  @override
  _MenuHolderState createState() => _MenuHolderState();
}

class _MenuHolderState extends State<MenuHolder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 56.0,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
          // color: Colors.amber,
          border: Border.all(
              color: Theme.of(context).primaryColor.withOpacity(.1), width: 1),
          borderRadius: BorderRadius.circular(1)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                // color: Colors.amber,
                border:
                    Border.all(color: Theme.of(context).primaryColor, width: 1),
                borderRadius: BorderRadius.circular(20)),
            child: Icon(
              Icons.upload_outlined,
              color: Theme.of(context).primaryColor,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => GroupPage()));
            },
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  // color: Colors.amber,
                  border: Border.all(
                      color: Theme.of(context).primaryColor, width: 1),
                  borderRadius: BorderRadius.circular(20)),
              child: Icon(
                Icons.group_outlined,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MessagesPage()));
            },
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  // color: Colors.amber,
                  border: Border.all(
                      color: Theme.of(context).primaryColor, width: 1),
                  borderRadius: BorderRadius.circular(20)),
              child: Icon(
                Icons.message_outlined,
                size: 20,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => NotifaicationPage()));
            },
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  // color: Colors.amber,
                  border: Border.all(
                      color: Theme.of(context).primaryColor, width: 1),
                  borderRadius: BorderRadius.circular(20)),
              child: Icon(
                Icons.notifications_outlined,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
                // color: Colors.amber,
                border:
                    Border.all(color: Theme.of(context).primaryColor, width: 1),
                borderRadius: BorderRadius.circular(20)),
            child: Icon(
              Icons.menu,
              color: Theme.of(context).primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
