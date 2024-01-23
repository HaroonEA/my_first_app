import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool? ischecked = false; // ? can store null value
  bool? ischecked2 = false;
  bool? ischecked3 = false;
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
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Checkbox(
              tristate: true,
              value: ischecked,
              onChanged: (val) {
                setState(() {
                  ischecked = val;
                });
              }),
          Checkbox(
              activeColor: Colors.red,
              checkColor: Colors.black,
              value: ischecked2,
              onChanged: (val) {
                setState(() {
                  ischecked2 = val;
                });
              }),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CheckboxListTile(
                title: Text("send notification"),
                subtitle: Text("turn on or off"),
                tileColor: Colors.green,
                value: ischecked3,
                onChanged: (val) {
                  setState(() {
                    ischecked3 = val;
                  });
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CheckboxListTile(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                title: Text("send notification"),
                subtitle: Text("turn on or off"),
                tileColor: Colors.red,
                value: ischecked3,
                onChanged: (val) {
                  setState(() {
                    ischecked3 = val;
                  });
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CheckboxListTile(
                controlAffinity:
                    ListTileControlAffinity.leading, //put checkbox at first
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                title: Text("send notification"),
                subtitle: Text("turn on or off"),
                tileColor: Colors.blue,
                value: ischecked3,
                onChanged: (val) {
                  setState(() {
                    ischecked3 = val;
                  });
                }),
          )
        ],
      )),
    );
  }
}
