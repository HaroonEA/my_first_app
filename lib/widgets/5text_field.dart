import 'dart:developer';

import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Learn Flutter"),
          centerTitle: true,
          backgroundColor: Colors.blue,
          leading: Icon(Icons.menu),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.person)),
          ],
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
          elevation: 20,
        ),
        body: Padding(
          padding: EdgeInsets.all(15.0),
          child: Center(
            child: Column(
              children: [
                TextField(
                    decoration: InputDecoration(
                        labelText: "User Name",
                        hintText:
                            "Enter your username", //gives hint, disappears while typing
                        prefixIcon: Icon(Icons.verified_user),
                        suffixIcon: Icon(Icons.verified))),
                TextField(
                    decoration: InputDecoration(
                        labelText: "User Name",
                        hintText: "Enter your username",
                        prefixText: "Mr.",
                        suffixText: "Hello")),
                TextField(
                    decoration: InputDecoration(
                  labelText: "User Name",
                  hintText: "Enter your username",
                  helperText: "Enter your username or password",
                  hintStyle: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      color: Colors.red),
                  labelStyle: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      color: Colors.red),
                  //helperStyle:
                )),
                TextField(
                  //maxLength: 10,//max no. of characters
                  obscureText: true, //hides our input
                  keyboardType: TextInputType.number, //shows no. keyboard
                ),
                TextField(
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          //properties gets activated only when clicked or focused
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(color: Colors.pink, width: 5)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(color: Colors.yellow, width: 5)),
                      label: Text("Username")),
                ),
                TextField(
                  textAlign: TextAlign.center,
                  decoration:
                      InputDecoration(filled: true, fillColor: Colors.blue),
                )
              ],
            ),
          ),
        ));
  }
}
