import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sign_up/screens/Home.dart';
import 'package:sign_up/signup.dart';

import 'class_example/using_class.dart';
import 'list.task.day4.dart';


class MyLogin extends StatelessWidget {
  var userData = TextEditingController();
  var passData = TextEditingController();
  MyLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            width: 500,
            color: Colors.black87,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 32)),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  controller: userData,
                  textAlign: TextAlign.center,
                  textAlignVertical: TextAlignVertical.center,
                  autofocus: true,
                  autocorrect: false,
                  decoration: InputDecoration(
                      labelText: "Username",
                      contentPadding: EdgeInsets.only(bottom: 5),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                              width: 0, style: BorderStyle.none))),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  controller: passData,
                  decoration: InputDecoration(
                      labelText: "Password",
                      contentPadding: EdgeInsets.only(bottom: 5),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(
                              width: 0, style: BorderStyle.none))),
                  obscureText: true,
                ),
                ElevatedButton(
                    onPressed: () async {
                      // viewmodel.user= new Users(userData.text);
                      //  viewmodel.loginUser(userData.text);
                      print("khgkjhg$passData");
                      if (userData.text == "nelly" && passData.text == "123") {
                        SharedPreferences pref =
                            await SharedPreferences.getInstance();
                        pref.setBool("isLogged", true);
                        pref.setString("userN", userData.text);
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage(),
                            ));
                      } else {
                        userData.clear();
                        passData.clear();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Invalid credentials Use Username :nelly Password:123',style: TextStyle(color:Colors.red)),
                          ),
                        );
                      }
                    },
                    child: const Text("Login"),
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Colors.orange))),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUp(),
                        ));
                  },
                  child: Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => main(),
                        ));
                  },
                  child: Text(
                    "Class Task day 5",
                    style: TextStyle(color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
