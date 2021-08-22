import 'package:flutter/material.dart';
import 'package:untitled/linuxOutput.dart';

// ignore: must_be_immutable
class LinuxInput extends StatelessWidget {
  final myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Linux Input"),
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter your command...',
                  ),
                  controller: myController,
                ),
              ),
              SizedBox(
                height: 100.0,
              ),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.cyan[400],
                    fixedSize: Size(300, 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => LinuxOutput(myController.text)),
                    );
                  },
                  child: Text(
                    "Run Command",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
