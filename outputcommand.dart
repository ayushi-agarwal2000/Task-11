import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;

// ignore: must_be_immutable
class LinuxOutput extends StatelessWidget {
  String output = "", command = "";
  LinuxOutput(this.command) {
    web();
  }

  web() async {
    var url = Uri.http('192.168.43.174', '/cgi-bin/main.py', {'x': '$command'});
    //
    // // Await the http get response, then decode the json-formatted response.
    var response = await http.get(url);
    this.output = response.body;

    Fluttertoast.showToast(
      msg: response.body,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      timeInSecForIosWeb: 1,
    );

    Text(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Linux Input"),
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Text(output),
      ),
    );
  }
}
