import 'package:flutter/material.dart';
import 'package:seb7a/widgets/drawer_widget.dart';
import 'package:easy_localization/easy_localization.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text("homeAppBarTittle".tr().toString()),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image/bg.jpeg'), fit: BoxFit.fill,),
          //shape: BoxShape.circle,
        ),
      ),
    );
  }
}
