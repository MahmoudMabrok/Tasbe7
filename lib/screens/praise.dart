import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Praise extends StatefulWidget {
  String name;
  int value;

  Praise(this.name, this.value);

  @override
  _PraiseState createState() => _PraiseState();
}

class _PraiseState extends State<Praise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: Container(
        padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width/2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(widget.value.toString() , style: TextStyle(color: Colors.black , fontSize: 100 , fontWeight: FontWeight.bold),),
            RawMaterialButton(
              onPressed: () {},
              elevation: 2.0,
              fillColor: Colors.white,
              child: Icon(
                Icons.pause,
                size: 35.0,
              ),
              padding: EdgeInsets.all(15.0),
              shape: CircleBorder(),
            )
          ],
        ),
      ),
    );
  }
}
