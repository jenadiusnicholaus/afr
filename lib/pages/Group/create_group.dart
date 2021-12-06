import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class CreateGroupDialog extends StatefulWidget {
  @override
  _CreateGroupDialogState createState() => _CreateGroupDialogState();
}

class _CreateGroupDialogState extends State<CreateGroupDialog> {
  String? _privacyRadioBtnVal;
  bool isfootball = false;

  bool hidePassword = false;
  void _handlePrivacyChange(String? value) {
    setState(() {
      _privacyRadioBtnVal = value;
    });
  }

  String? selected;
  var _groupCategories = ["Item 1", "Item 2", "Item 3"];

  bool lightTheme = true;
  Color currentColor = Colors.limeAccent;
  List<Color> currentColors = [Colors.limeAccent, Colors.green];

  void changeColor(Color color) => setState(() => currentColor = color);
  void changeColors(List<Color> colors) =>
      setState(() => currentColors = colors);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Create Group'),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: 800,
            child: Column(
              children: [
                Container(
                  height: 140,
                  // color: Colors.indigo,
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor.withOpacity(.4)),
                  child: Column(
                    children: [
                      Stack(children: [
                        CircleAvatar(
                          backgroundImage:
                              AssetImage('assets/images/groupicon.jpeg'),
                          radius: 40,
                        ),
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(100)),
                            child: Icon(
                              Icons.add_a_photo,
                              color: Theme.of(context).primaryColor,
                            ),
                          ),
                        )
                      ]),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Form(
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
                        labelStyle: TextStyle(color: Colors.white),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        contentPadding: new EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide(
                                color: Theme.of(context).primaryColor)),
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Theme.of(context).primaryColor),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: 'Name of the group',
                        hintStyle:
                            TextStyle(color: Theme.of(context).primaryColor),
                        fillColor: Colors.white,
                        filled: true,
                        suffixIcon: IconButton(
                          color: Theme.of(context).primaryColor,
                          // ignore: prefer_const_constructors
                          icon: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            // setState(() {
                            // hidePassword = !hidePassword;
                            // });
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "Privacy:",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Radio<String>(
                        value: "Public",
                        groupValue: _privacyRadioBtnVal,
                        onChanged: _handlePrivacyChange,
                      ),
                      Text("Public"),
                      Radio<String>(
                        value: "Private",
                        groupValue: _privacyRadioBtnVal,
                        onChanged: _handlePrivacyChange,
                      ),
                      Text("Private"),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.white),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      contentPadding: new EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor)),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Theme.of(context).primaryColor),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintText: 'Group Categoris',
                      hintStyle:
                          TextStyle(color: Theme.of(context).primaryColor),
                      fillColor: Colors.white,
                      filled: true,
                      suffixIcon: IconButton(
                        color: Theme.of(context).primaryColor,
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          // setState(() {
                          // hidePassword = !hidePassword;
                          // });
                        },
                      ),
                    ),
                    value: selected,
                    items: _groupCategories
                        .map((label) => DropdownMenuItem<String>(
                              child: Text(label),
                              value: label,
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() => selected = value);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      labelStyle: TextStyle(color: Colors.white),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      contentPadding: new EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 20.0),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor)),
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Theme.of(context).primaryColor),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintText: 'Location',
                      hintStyle:
                          TextStyle(color: Theme.of(context).primaryColor),
                      fillColor: Colors.white,
                      filled: true,
                      suffixIcon: IconButton(
                        color: Theme.of(context).primaryColor,
                        icon: Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          // setState(() {
                          // hidePassword = !hidePassword;
                          // });
                        },
                      ),
                    ),
                    value: selected,
                    items: _groupCategories
                        .map((label) => DropdownMenuItem<String>(
                              child: Text(label),
                              value: label,
                            ))
                        .toList(),
                    onChanged: (value) {
                      setState(() => selected = value);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "Invite:",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.person_add_sharp)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(
                        "Theme:",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      RaisedButton(
                        elevation: 3.0,
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                titlePadding: const EdgeInsets.all(0.0),
                                contentPadding: const EdgeInsets.all(0.0),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                                content: SingleChildScrollView(
                                  child: SlidePicker(
                                    pickerColor: currentColor,
                                    onColorChanged: changeColor,
                                    // paletteType: PaletteType.rgb,
                                    enableAlpha: false,
                                    displayThumbColor: true,
                                    showLabel: false,
                                    showIndicator: true,
                                    indicatorBorderRadius:
                                        const BorderRadius.vertical(
                                      top: const Radius.circular(25.0),
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                        child: const Text('Choose theme'),
                        color: currentColor,
                        textColor: useWhiteForeground(currentColor)
                            ? const Color(0xffffffff)
                            : const Color(0xff000000),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    maxLength: 8,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(0.0),
                          child:
                              Icon(Icons.edit, size: 40.0, color: Colors.black),
                        ),
                        hintText: "Description",
                        // hintStyle: TextStyle(color: Colors.white30),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(new Radius.circular(25.0))),
                        labelStyle: TextStyle(color: Colors.white)),
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                    ),
                    // controller: host,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Empty value";
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    maxLength: 8,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(0.0),
                          child:
                              Icon(Icons.edit, size: 40.0, color: Colors.black),
                        ),
                        hintText: "Group rules",
                        // hintStyle: TextStyle(color: Colors.white30),
                        border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(new Radius.circular(25.0))),
                        labelStyle: TextStyle(color: Colors.white)),
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                    ),
                    // controller: host,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Empty value";
                      }
                    },
                  ),
                ),
                RaisedButton(
                  onPressed: () {},
                  child: const Text('Create'),
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                )
              ],
            ),
          ),
        ));
  }
}
