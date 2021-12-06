import 'package:flutter/material.dart';

class NextRegister extends StatefulWidget {
  @override
  _NextRegisterState createState() => _NextRegisterState();
}

class _NextRegisterState extends State<NextRegister> {
  String? _genderRadioBtnVal;
  bool isfootball = false;

  bool hidePassword = false;
  void _handleGenderChange(String? value) {
    setState(() {
      _genderRadioBtnVal = value;
    });
  }

  DateTime currentDate = DateTime.now();
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: currentDate,
        firstDate: DateTime(2015),
        lastDate: DateTime(2050));
    if (pickedDate != null && pickedDate != currentDate)
      setState(() {
        currentDate = pickedDate;
      });
  }

  void _getValue(bool? value) {
    setState(() {
      isfootball = value!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        height: 1000,
        width: double.infinity,

        // decoration: BoxDecoration(
        //   color: Colors.red,
        // ),
        child: Form(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 1),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 60.0, bottom: 20),
                  child: Wrap(
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Container(
                        width: 100,
                        child: Divider(
                          height: 3,
                          thickness: 4,
                          color: Colors.green,
                        ),
                      ),
                      Image(
                        image: AssetImage(
                          'assets/images/afrlogo.png',
                        ),
                        width: 100,
                        height: 90,
                      ),
                      Container(
                        width: 90,
                        child: Divider(
                          height: 3,
                          thickness: 4,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
                // Text(
                //   'Bdege wanaofanana huruja pamoja',
                //   style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                // ),
                //

                Padding(
                  padding: const EdgeInsets.only(top: 5.0, bottom: 20),
                  child: Wrap(
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Text(
                        'Hobbies',
                        style: TextStyle(fontSize: 13),
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Container(
                        width: 200,
                        child: Divider(
                          height: 3,
                          thickness: 2,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),

                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.start,
                  children: <Widget>[
                    Container(
                      width: 130,
                      child: Row(
                        children: [
                          Checkbox(
                            value: isfootball,
                            onChanged: _getValue,
                          ),
                          Text("Football"),
                        ],
                      ),
                    ),
                    Container(
                      width: 130,
                      child: Row(
                        children: [
                          Checkbox(
                            value: isfootball,
                            onChanged: _getValue,
                          ),
                          Text("Basketball"),
                        ],
                      ),
                    ),
                    Container(
                      width: 90,
                      child: Row(
                        children: [
                          Checkbox(
                            value: isfootball,
                            onChanged: _getValue,
                          ),
                          Text("Ruby"),
                        ],
                      ),
                    ),
                    Container(
                      width: 130,
                      child: Row(
                        children: [
                          Checkbox(
                            value: isfootball,
                            onChanged: _getValue,
                          ),
                          Text("Tennes"),
                        ],
                      ),
                    ),
                    Container(
                      width: 130,
                      child: Row(
                        children: [
                          Checkbox(
                            value: isfootball,
                            onChanged: _getValue,
                          ),
                          Text("Netball"),
                        ],
                      ),
                    ),
                    Container(
                      width: 90,
                      child: Row(
                        children: [
                          Checkbox(
                            value: isfootball,
                            onChanged: _getValue,
                          ),
                          Text("music"),
                        ],
                      ),
                    ),
                    Container(
                      width: 90,
                      child: Row(
                        children: [
                          Checkbox(
                            value: isfootball,
                            onChanged: _getValue,
                          ),
                          Text("Gof"),
                        ],
                      ),
                    ),
                    Container(
                      width: 100,
                      child: Row(
                        children: [
                          Checkbox(
                            value: isfootball,
                            onChanged: _getValue,
                          ),
                          Text("Fishing"),
                        ],
                      ),
                    ),
                    Container(
                      width: 140,
                      child: Row(
                        children: [
                          Checkbox(
                            value: isfootball,
                            onChanged: _getValue,
                          ),
                          Text("Reading Book"),
                        ],
                      ),
                    ),
                    Container(
                      width: 140,
                      child: Row(
                        children: [
                          Checkbox(
                            value: isfootball,
                            onChanged: _getValue,
                          ),
                          Text("Cooking"),
                        ],
                      ),
                    ),
                    Container(
                      width: 140,
                      child: Row(
                        children: [
                          Checkbox(
                            value: isfootball,
                            onChanged: _getValue,
                          ),
                          Text("Swimming"),
                        ],
                      ),
                    ),
                    Container(
                      width: 140,
                      child: Row(
                        children: [
                          Checkbox(
                            value: isfootball,
                            onChanged: _getValue,
                          ),
                          Text("Swimming"),
                        ],
                      ),
                    ),
                    Container(
                      width: 140,
                      child: Row(
                        children: [
                          Checkbox(
                            value: isfootball,
                            onChanged: _getValue,
                          ),
                          Text("programming"),
                        ],
                      ),
                    )
                  ],
                ),

                Row(
                  children: [
                    RaisedButton(
                      shape: StadiumBorder(),
                      color: Theme.of(context).primaryColor,
                      onPressed: () => _selectDate(context),
                      child: Text(
                        'Date of birth',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Text(currentDate.toString()),
                  ],
                ),

                Row(
                  children: <Widget>[
                    Radio<String>(
                      value: "Male",
                      groupValue: _genderRadioBtnVal,
                      onChanged: _handleGenderChange,
                    ),
                    Text("Male"),
                    Radio<String>(
                      value: "Female",
                      groupValue: _genderRadioBtnVal,
                      onChanged: _handleGenderChange,
                    ),
                    Text("Female"),
                    Radio<String>(
                      value: "Other",
                      groupValue: _genderRadioBtnVal,
                      onChanged: _handleGenderChange,
                    ),
                    Text("Other"),
                  ],
                ),

                Container(
                  width: double.infinity,
                  height: 50,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.emailAddress,
                    onSaved: (value) {
                      // signInCredential.email = value;
                    },
                    validator: (value) => !value!.contains('@') && value.isEmpty
                        ? 'Enter a valid email address'
                        : null,
                    decoration: InputDecoration(
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 2.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 2.0),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: 'phone number',
                        prefixIcon: IconButton(
                          color: Theme.of(context).primaryColor,
                          icon: Icon(Icons.phone_android),
                          onPressed: () {
                            // Do something on press this button
                          },
                        )),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: double.infinity,
                  height: 50,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.emailAddress,
                    onSaved: (value) {
                      // signInCredential.email = value;
                    },
                    validator: (value) => !value!.contains('@') && value.isEmpty
                        ? 'Enter a valid email address'
                        : null,
                    decoration: InputDecoration(
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 2.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 2.0),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: 'Email',
                        prefixIcon: IconButton(
                          color: Theme.of(context).primaryColor,
                          icon: Icon(Icons.email_outlined),
                          onPressed: () {
                            // Do something on press this button
                          },
                        )),
                  ),
                ),

                SizedBox(
                  height: 5,
                ),

                Container(
                  width: double.infinity,
                  height: 50,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.emailAddress,
                    onSaved: (value) {
                      // signInCredential.email = value;
                    },
                    validator: (value) => !value!.contains('@') && value.isEmpty
                        ? 'Enter a valid email address'
                        : null,
                    decoration: InputDecoration(
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 2.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Theme.of(context).primaryColor,
                              width: 2.0),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: 'Password',
                        prefixIcon: IconButton(
                          color: Theme.of(context).primaryColor,
                          icon: Icon(Icons.lock_outline),
                          onPressed: () {
                            // Do something on press this button
                          },
                        )),
                  ),
                ),

                SizedBox(
                  height: 20.0,
                ),
                GestureDetector(
                  onTap: () {
                    // if (validateAndSave()) {
                    //   setState(() {
                    //     isApiCallInProgress = true;
                    //   });

                    //   _userSignIn();
                    // }
                  },
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              height: 46.0,
                              width: 160,
                              decoration: BoxDecoration(
                                  // color: Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: Row(
                                children: [
                                  Icon(Icons.arrow_back),
                                  Text(
                                    'Back',
                                    style: TextStyle(
                                      color: Theme.of(context).primaryColor,
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              )),
                            ),
                            Container(
                              height: 30.0,
                              width: 100,
                              decoration: BoxDecoration(
                                  color: Theme.of(context).primaryColor,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: Text(
                                'Done',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      )),
    );
  }
}
