import 'package:flutter/material.dart';

class EditProfileWidget extends StatefulWidget {
  @override
  _EditProfileWidgetState createState() => _EditProfileWidgetState();
}

class _EditProfileWidgetState extends State<EditProfileWidget> {
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
                Icons.edit,
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
                Icons.save_alt_sharp,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
