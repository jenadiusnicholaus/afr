import 'package:afr/common/baseappbar.dart';
import 'package:afr/models/message.dart';
import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  final Message? chat;

  const Chats({Key? key, this.chat}) : super(key: key);
  @override
  _ChatsState createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  _displayCharts(bool isme, String message, String time) {
    return Container(
      height: 60,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
      decoration: BoxDecoration(
          color: isme
              ? Theme.of(context).primaryColor.withOpacity(.3)
              : Colors.green.withOpacity(.3),
          borderRadius: isme
              ? BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                  topRight: Radius.circular(20))
              : BorderRadius.only(
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  topLeft: Radius.circular(20),
                )),
      margin: isme
          ? EdgeInsets.only(left: 0, top: 6.0, right: 100)
          : EdgeInsets.only(left: 100.0, top: 6.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              message,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(''),
              Text(time,
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold)),
            ],
          )
        ],
      ),
    );
  }

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
                  height: 800,
                  width: double.infinity,
                  // color: Colors.purple,
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        width: double.infinity,
                        color: Theme.of(context).accentColor.withOpacity(.2),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage:
                                  AssetImage(widget.chat!.user.imageurl!),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            Text(widget.chat!.user.name!)
                          ],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.tealAccent.withOpacity(.1),
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              itemCount: chats.length,
                              itemBuilder: (BuildContext context, index) {
                                String message = chats[index].massges;
                                String createdat = chats[index].createdAt;
                                bool isme = widget.chat!.user.name ==
                                    chats[index].user.name;
                                return _displayCharts(isme, message, createdat);
                              }),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 60,
            color: Theme.of(context).primaryColor.withOpacity(.2),
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 2),
            child: Form(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Expanded(
                    child: Container(
                      width: 300,
                      height: 40,
                      child: TextFormField(
                        keyboardType: TextInputType.text,
                        // obscuringCharacter: '.',
                        onSaved: (value) {
                          // signInCredential.password = value;
                        },
                        validator: (value) => value!.length < 0
                            ? 'Search text can\'t be empty'
                            : null,
                        decoration: InputDecoration(
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.red),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          hintText: 'Type...',
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: IconButton(
                            color: Theme.of(context).primaryColor,
                            icon: Icon(
                              Icons.emoji_emotions,
                              color: Colors.amber,
                            ),
                            onPressed: () {
                              setState(() {
                                // hidePassword = !hidePassword;
                              });
                            },
                          ),
                          suffixIcon: IconButton(
                            color: Theme.of(context).primaryColor,
                            icon: Icon(
                              Icons.send_outlined,
                            ),
                            onPressed: () {
                              setState(() {
                                // hidePassword = !hidePassword;
                                print('send');
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
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
                        Icons.attach_file_outlined,
                        size: 20,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
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
                        Icons.mic,
                        size: 20,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
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
                        Icons.camera_alt,
                        size: 20,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
