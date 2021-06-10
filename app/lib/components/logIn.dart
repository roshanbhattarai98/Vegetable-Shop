//import 'dart:ffi';

import 'package:app/components/progress.dart';
import 'package:app/model/login_model.dart';
import 'package:flutter/material.dart';
import 'package:app/components/homePage.dart';
import 'package:app/components/test.dart';
import 'package:app/api/login_api.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  GlobalKey<FormState> globalFormKey = new GlobalKey<FormState>();
  late LogInRequestModel requestModel;
  bool isApiCallProcess = false;
  @override
  void initState() {
    super.initState();
    requestModel = new LogInRequestModel(email: '', password: '');
  }

  // @override
  //Widget build(BuildContext context) {
  //return ProgressHUD(
  //child: _uiSetup(context),
  // inAsyncCall: isApiCallProcess,
  // opacity: 0.3, key: null, valueColor: Colors.blueAccent,
  // );
  //}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      "Login",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Login to your account",
                      style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Form(
                    child: Column(
                      children: <Widget>[
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          onSaved: (input) => requestModel.email = input!,
                          validator: (input) => !input!.contains("@")
                              ? "Email id should be valid"
                              : null,
                          decoration: new InputDecoration(
                              hintText: "Email Address",
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 10),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey))),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
                          keyboardType: TextInputType.text,
                          onSaved: (input) => requestModel.password = input!,
                          validator: (input) => input!.length < 6
                              ? "Password should be more than 6 characters"
                              : null,
                          //       obscureText = true,
                          decoration: new InputDecoration(
                              hintText: "Password",
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 10),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey),
                              ),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey))),
                        ),

                        //    inputFile(label: "Email"),
                        //  inputFile(label: "Password", obscureText: true)
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Container(
                    padding: EdgeInsets.only(top: 3, left: 3),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border(
                          bottom: BorderSide(color: Colors.black),
                          top: BorderSide(color: Colors.black),
                          left: BorderSide(color: Colors.black),
                          right: BorderSide(color: Colors.black),
                        )),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      height: 60,
                      onPressed: () {
                        if (ValidateAndSave()) {
                          //       setState(() {
                          //       isApiCallProcess = true;
                          //   });
                          //   APIService apiService = new APIService();
                          //  apiService.login(requestModel).then((value) => {
                          //    setState(() {
                          //  isApiCallProcess = false;
                          //  })
                          // });
                          print(requestModel.toJson());
                        }

                        //  Navigator.push(
                        //    context,
                        //  MaterialPageRoute(
                        //    builder: (context) => HomePage()));
                      },
                      color: Color(0xff0095FF),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Don't have an account?"),
                    Text(
                      " Sign up",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    )
                  ],
                ),
                //   Container(
                //   padding: EdgeInsets.only(top: 100),
                //  height: 200,
                // decoration: BoxDecoration(
                // image: DecorationImage(
                //   image: AssetImage("assets/background.png"),
                // fit: BoxFit.fitHeight),
                //  ),
                //  )
              ],
            ))
          ],
        ),
      ),
    );
  }

  bool ValidateAndSave() {
    final form = globalFormKey.currentState;
    if (form!.validate()) {
      form.save();
      return true;
    }
    return false;
  }
}
     
// we will be creating a widget for text field
/*Widget inputFile({label, obscureText = false}) {
  return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: TextStyle(
              fontSize: 15, fontWeight: FontWeight.w400, color: Colors.black87),
        ),
        SizedBox(
          height: 5,
        ),
        TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              border:
                  OutlineInputBorder(borderSide: BorderSide(color: Colors.grey))
                  ),
        ),
        SizedBox(
          height: 10,
        )
  
      ],
  //  ),
  );
}*/
