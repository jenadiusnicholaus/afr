import 'package:flutter/material.dart';

class AddPostWidget extends StatefulWidget {
  @override
  _AddPostWidgetState createState() => _AddPostWidgetState();
}

class _AddPostWidgetState extends State<AddPostWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.indigoAccent,
      padding: EdgeInsets.symmetric(horizontal: 20),
      height: 50,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
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
                      color: Theme.of(context).primaryColor, width: 1),
                  borderRadius: BorderRadius.circular(20)),
              child: Icon(
                Icons.mic,
                color: Theme.of(context).primaryColor,
              ),
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
                      color: Theme.of(context).primaryColor, width: 1),
                  borderRadius: BorderRadius.circular(20)),
              child: Icon(
                Icons.video_call_outlined,
                color: Theme.of(context).primaryColor,
              ),
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
                      color: Theme.of(context).primaryColor, width: 1),
                  borderRadius: BorderRadius.circular(20)),
              child: Icon(
                Icons.add_a_photo_outlined,
                size: 20,
                color: Theme.of(context).primaryColor,
              ),
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
                      color: Theme.of(context).primaryColor, width: 1),
                  borderRadius: BorderRadius.circular(20)),
              child: Icon(
                Icons.edit_outlined,
                size: 20,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
