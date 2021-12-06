import 'package:flutter/material.dart';

followingContainer({
  BuildContext? context,
  EdgeInsets? mypadding,
  Decoration? decoration,
}) {
  return Padding(
    padding: mypadding!,
    child: Container(
      width: double.infinity,
      decoration: decoration,
      padding: EdgeInsets.symmetric(horizontal: 5),
      height: 80,
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 70,
              width: 300,
              padding: EdgeInsets.symmetric(vertical: 2),
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 70,
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        children: [
                          Stack(children: [
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                  // color: Colors.amber,
                                  border: Border.all(
                                      color: Theme.of(context).primaryColor,
                                      width: 1),
                                  borderRadius: BorderRadius.circular(100)),
                              child: Icon(
                                Icons.person,
                                size: 40,
                                color: Theme.of(context).primaryColor,
                              ),
                            ),
                            Positioned(
                              right: 6,
                              bottom: 4,
                              child: Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(100)),
                              ),
                            )
                          ]),
                          Text(
                            'usernme',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    );
                  }),
            ),
          ),
          Container(
            width: 50,
            height: 100,
            // color: Colors.red,
            decoration: BoxDecoration(
                border: Border(
                    left: BorderSide(
                        width: 2, color: Theme.of(context!).primaryColor))),
            child: Center(
              child: Text(
                ' 534 k',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
