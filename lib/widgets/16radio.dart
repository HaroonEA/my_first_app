import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String? gender;
  String? status;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Learn Flutter"),
          centerTitle: true,
          backgroundColor: Colors.blue,
          elevation: 20,
          leading: Icon(Icons.menu),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            IconButton(onPressed: () {}, icon: Icon(Icons.person)),
          ],
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
        ),
        body: Column(
          children: [
            Container(
              color: Colors.amberAccent,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(children: [
                  Text(
                    "select your gender",
                    style: TextStyle(fontSize: 20),
                  ),
                  ListTile(
                    title: Text("Male"),
                    leading: Radio(
                        value: "male",
                        groupValue: gender,
                        onChanged: (String? value) {
                          setState(() {
                            gender = value;
                          });
                        }),
                  ),
                  ListTile(
                    title: Text("Female"),
                    leading: Radio(
                        value: "female",
                        groupValue: gender,
                        onChanged: (String? value) {
                          setState(() {
                            gender = value;
                          });
                        }),
                  ),
                  ListTile(
                    title: Text("Other"),
                    leading: Radio(
                        value: "other",
                        groupValue: gender,
                        onChanged: (String? value) {
                          setState(() {
                            gender = value;
                          });
                        }),
                  )
                ]),
              ),
            ),
            Container(
              child: Column(children: [
                Text(
                  "Marital status",
                  style: TextStyle(fontSize: 20),
                ),
                RadioListTile(
                    title: Text("Married"),
                    value: "married",
                    groupValue: status,
                    onChanged: (String? value) {
                      setState(() {
                        status = value;
                      });
                    }),
                RadioListTile(
                    activeColor: Colors.red,
                    title: Text("Unmarried"),
                    value: "unmarried",
                    groupValue: status,
                    onChanged: (String? value) {
                      setState(() {
                        status = value;
                      });
                    }),
                Text(
                  "$status",
                  style: TextStyle(fontSize: 20),
                )
              ]),
            )
          ],
        ));
  }
}
