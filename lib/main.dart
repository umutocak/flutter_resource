import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_resource/views/awesome_chart.dart';
import 'package:flutter_resource/views/curved_navigation_bar.dart';
import 'package:flutter_resource/views/file_select_upload.dart';
import 'package:flutter_resource/views/shimmer.dart';
import 'package:flutter_resource/views/trendyol_login.dart';
import 'package:flutter_resource/views/video_call.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.transparent));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return FormLogin();
  }
}
