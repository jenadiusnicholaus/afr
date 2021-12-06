import 'package:afr/pages/auth/myaccount.dart';
import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? username;

  const BaseAppBar({Key? key, this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // _choiceAction(String choice) {
    //   if (choice == Constants.Logout) {
    //     logout();
    //     Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => LoginPage()),(Route<dynamic> route) => false);
    //   }
    // }

    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            // color: Theme.of(context).primaryColor,
            // offset: Offset(0, 2.0),
            // blurRadius: 0.0,
            )
      ]),
      child: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: Form(
          child: Text(
            'Afr',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        elevation: 0.0,
        actions: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: GestureDetector(onTap: () {}, child: Icon(Icons.search)),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyAccount()));
              },
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/ppic2.jpeg'),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
