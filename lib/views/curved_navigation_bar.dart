import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CurvedNavigationBarViews extends StatefulWidget {
  @override
  _CurvedNavigationBarViewsState createState() => _CurvedNavigationBarViewsState();
}

class _CurvedNavigationBarViewsState extends State<CurvedNavigationBarViews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Curved Navigation Bar", style: TextStyle(color: Colors.black),),
        shadowColor: Colors.transparent,
      ),
      body: Center(child: Text("Yazilimoji", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        color: Colors.red,
        height: 60,
        items: <Widget>[
          Icon(Icons.home, size: 30, color: Colors.white,),
          Icon(Icons.search, size: 30, color: Colors.white,),
          Icon(Icons.add, size: 30, color: Colors.white,),
          Icon(Icons.settings, size: 30, color: Colors.white,),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
    );
  }
}
