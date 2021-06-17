import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/services.dart';
import 'package:seb7a/widgets/azkar_Item_widget.dart';


class EvningAzkar extends StatefulWidget {
  const EvningAzkar({Key key}) : super(key: key);

  @override
  _EvningAzkarState createState() => _EvningAzkarState();
}

class _EvningAzkarState extends State<EvningAzkar> {

  List evningAzkar = [];

  Future<void> loadData() async {
    var data = await rootBundle.loadString('resources/evning_azkar.json');
    setState(() => evningAzkar = json.decode(data));
  }

  @override
  void initState() {
    super.initState();
    this.loadData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EvningAzkar'.tr().toString()),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image/bg.jpeg'), fit: BoxFit.fill,),
          //shape: BoxShape.circle,
        ),
        child: ListView.builder(itemCount: evningAzkar.length , itemBuilder: (ctx , pos){
          return AzkarItem(description: evningAzkar[pos]['name'],value: evningAzkar[pos]['benefit'],number: evningAzkar[pos]['number']);
        }),
      ),
    );
  }
}
