import 'package:afr/auth/nextregistration.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool hidePassword = false;
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
                  padding: const EdgeInsets.only(top: 60.0, bottom: 50),
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
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Wrap(
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Text(
                        'Names',
                        style: TextStyle(fontSize: 18),
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

                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      width: 200,
                      height: 50,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.emailAddress,
                        onSaved: (value) {
                          // signInCredential.email = value;
                        },
                        validator: (value) =>
                            !value!.contains('@') && value.isEmpty
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
                            hintText: 'First name',
                            prefixIcon: IconButton(
                              color: Theme.of(context).primaryColor,
                              icon: Icon(Icons.person_outline),
                              onPressed: () {
                                // Do something on press this button
                              },
                            )),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Container(
                        width: 200,
                        height: 50,
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.emailAddress,
                          onSaved: (value) {
                            // signInCredential.email = value;
                          },
                          validator: (value) =>
                              !value!.contains('@') && value.isEmpty
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
                              hintText: 'Middle name',
                              prefixIcon: IconButton(
                                color: Theme.of(context).primaryColor,
                                icon: Icon(Icons.person_outline),
                                onPressed: () {
                                  // Do something on press this button
                                },
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6),
                Container(
                  width: double.infinity,
                  height: 50,
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.emailAddress,
                    onSaved: (value) {
                      // signInCredential.email = value;
                    },
                    validator: (value) =>
                        !value!.contains('@') && value!.isEmpty
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
                        hintText: 'Last Name',
                        prefixIcon: IconButton(
                          color: Theme.of(context).primaryColor,
                          icon: Icon(Icons.person_outline),
                          onPressed: () {
                            // Do something on press this button
                          },
                        )),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 25.0, bottom: 20),
                  child: Wrap(
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Text(
                        'Location',
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

                Row(
                  children: [
                    Container(
                      width: 200,
                      height: 50,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.emailAddress,
                        onSaved: (value) {
                          // signInCredential.email = value;
                        },
                        validator: (value) =>
                            !value!.contains('@') && value.isEmpty
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
                            hintText: 'Region',
                            prefixIcon: IconButton(
                              color: Theme.of(context).primaryColor,
                              icon: Icon(Icons.pin_drop),
                              onPressed: () {
                                // Do something on press this button
                              },
                            )),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Container(
                        width: 200,
                        height: 50,
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.emailAddress,
                          onSaved: (value) {
                            // signInCredential.email = value;
                          },
                          validator: (value) =>
                              !value!.contains('@') && value.isEmpty
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
                              hintText: 'City',
                              prefixIcon: IconButton(
                                color: Theme.of(context).primaryColor,
                                icon: Icon(Icons.pin_drop),
                                onPressed: () {
                                  // Do something on press this button
                                },
                              )),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6),
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
                        hintText: 'District',
                        prefixIcon: IconButton(
                          color: Theme.of(context).primaryColor,
                          icon: Icon(Icons.pin_drop_outlined),
                          onPressed: () {
                            // Do something on press this button
                          },
                        )),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 25.0, bottom: 20),
                  child: Wrap(
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Text(
                        'Education',
                        style: TextStyle(
                            fontSize: 13, fontWeight: FontWeight.bold),
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

                Row(
                  children: [
                    Container(
                      width: 200,
                      height: 50,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.emailAddress,
                        onSaved: (value) {
                          // signInCredential.email = value;
                        },
                        validator: (value) =>
                            !value!.contains('@') && value.isEmpty
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
                            hintText: 'O/ A\'level',
                            prefixIcon: IconButton(
                              color: Theme.of(context).primaryColor,
                              icon: Icon(Icons.school_outlined),
                              onPressed: () {
                                // Do something on press this button
                              },
                            )),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Container(
                        width: 200,
                        height: 50,
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.emailAddress,
                          onSaved: (value) {
                            // signInCredential.email = value;
                          },
                          validator: (value) =>
                              !value!.contains('@') && value.isEmpty
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
                              hintText: 'Bachelor/PostGrate',
                              prefixIcon: IconButton(
                                color: Theme.of(context).primaryColor,
                                icon: Icon(Icons.school_rounded),
                                onPressed: () {
                                  // Do something on press this button
                                },
                              )),
                        ),
                      ),
                    ),
                  ],
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Wrap(
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.center,
                    crossAxisAlignment: WrapCrossAlignment.center,
                    children: [
                      Text(
                        'Work',
                        style: TextStyle(fontSize: 18),
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

                SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Container(
                      width: 200,
                      height: 50,
                      child: TextFormField(
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.emailAddress,
                        onSaved: (value) {
                          // signInCredential.email = value;
                        },
                        validator: (value) =>
                            !value!.contains('@') && value.isEmpty
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
                            hintText: 'Type of work',
                            prefixIcon: IconButton(
                              color: Theme.of(context).primaryColor,
                              icon: Icon(Icons.work_outlined),
                              onPressed: () {
                                // Do something on press this button
                              },
                            )),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Container(
                        width: 200,
                        height: 50,
                        child: TextFormField(
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.emailAddress,
                          onSaved: (value) {
                            // signInCredential.email = value;
                          },
                          validator: (value) =>
                              !value!.contains('@') && value.isEmpty
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
                              hintText: 'Where are you working',
                              prefixIcon: IconButton(
                                color: Theme.of(context).primaryColor,
                                icon: Icon(Icons.work_outline),
                                onPressed: () {
                                  // Do something on press this button
                                },
                              )),
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 6),

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
                                  child: Text(
                                'Login',
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => NextRegister()));
                              },
                              child: Container(
                                height: 30.0,
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(
                                    child: Text(
                                  'Next',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                              ),
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
