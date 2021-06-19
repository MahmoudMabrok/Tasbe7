import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:seb7a/widgets/azkar_Item_widget.dart';
import 'package:easy_localization/easy_localization.dart';


class Morningazkar extends StatefulWidget {
  const Morningazkar({Key key}) : super(key: key);

  @override
  _MorningazkarState createState() => _MorningazkarState();
}

class _MorningazkarState extends State<Morningazkar> {

  List morningAzkar = [];

  Future<void> loadData() async {
    var data = await rootBundle.loadString('resources/evning_azkar.json');
    setState(() => morningAzkar = json.decode(data));
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
        title: Text('MorningAzkar'.tr().toString()),
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
        child: ListView.builder(physics:BouncingScrollPhysics() , itemCount: morningAzkar.length , itemBuilder: (ctx , pos){
          return AzkarItem(description: morningAzkar[pos]['name'],value: morningAzkar[pos]['benefit'],number: morningAzkar[pos]['number']);
        }),
      ),
    );
  }
}
