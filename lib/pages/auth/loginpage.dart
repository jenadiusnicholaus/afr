import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool hidePassword = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        height: 800,
        width: double.infinity,

        // decoration: BoxDecoration(
        //   color: Colors.red,
        // ),
        child: Form(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Image(
                  image: AssetImage(
                    'assets/images/afrlogo.png',
                  ),
                  width: 200,
                  height: 200,
                ),
                // Text(
                //   'Bdege wanaofanana huruja pamoja',
                //   style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                // ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 30),
                  height: 140,
                  width: 130,
                  child: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColor,
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/ppic2.jpeg'),
                  ),
                ),
                TextFormField(
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
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                            color: Theme.of(context).primaryColor, width: 2.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).primaryColor, width: 2.0),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintText: 'Email address',
                      prefixIcon: IconButton(
                        color: Theme.of(context).primaryColor,
                        icon: Icon(Icons.email_outlined),
                        onPressed: () {
                          // Do something on press this button
                        },
                      )),
                ),
                SizedBox(height: 20),
                TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: hidePassword,
                  // obscuringCharacter: '.',
                  onSaved: (value) {
                    // signInCredential.password = value;
                  },
                  validator: (value) => value!.length < 3
                      ? 'Password must be at least 3 characters'
                      : null,
                  decoration: InputDecoration(
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                          color: Theme.of(context).primaryColor, width: 2.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Theme.of(context).primaryColor, width: 2.0),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: 'password',
                    prefixIcon: IconButton(
                      color: Theme.of(context).primaryColor,
                      icon: Icon(Icons.lock_outline),
                      onPressed: () {
                        // Do something on press this button
                      },
                    ),
                    suffixIcon: IconButton(
                      color: Theme.of(context).primaryColor.withOpacity(0.4),
                      icon: Icon(hidePassword
                          ? Icons.visibility_off
                          : Icons.visibility),
                      onPressed: () {
                        setState(() {
                          hidePassword = !hidePassword;
                        });
                      },
                    ),
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
                      Row(
                        children: [
                          Container(
                            height: 46.0,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                                child: Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                          ),
                          Container(
                            height: 46.0,
                            width: 200,
                            decoration: BoxDecoration(
                                // color: Theme.of(context).primaryColor,
                                borderRadius: BorderRadius.circular(10)),
                            child: Center(
                                child: Text(
                              'Forgot Password',
                              style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            )),
                          )
                        ],
                      ),
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
                                'Create afr Acount',
                                style: TextStyle(
                                  color: Theme.of(context).primaryColor,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
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
                                'Language',
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
