import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:dio/dio.dart';
import 'dart:async';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Server',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(title: 'Flutter Server App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
    );
  }

  Future getData() async {
    //Uri url= Uri.parse('http://paulbrode.com:3306/db.php');
    Uri url = Uri.parse("http://paulbrode.com/db.php");
    int bb=1;
    http.Response response = await http.get(url);
    var data = jsonDecode(response.body);
  }

  void getHttp() async {
    try {
      var response = await Dio().get("http://paulbrode.com/dbb.php");
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    getData();
    //getHttp();
  }
}
