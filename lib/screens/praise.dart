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
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image/praise.jpeg'), fit: BoxFit.fill,),
          //shape: BoxShape.circle,
        ),
        child: Column(
          children: [
            SizedBox(height: 40,),
            //Max value is = million
            Center(
              child: Text(widget.value.toString() , style: TextStyle(color: Colors.white , fontSize: 80 , fontWeight: FontWeight.bold),),
            ),
            SizedBox(height: 100,),
            Container(
              width: 200,
              height: 200,
              child: MaterialButton(
                shape: CircleBorder(side: BorderSide(width: 1,)),
                color: Colors.green,
                onPressed: (){},
              ),
            ),
            SizedBox(height: 50,),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(icon: Icon(Icons.delete),color: Colors.grey  ,iconSize: 50, onPressed: () {}),
                  Container(
                    width: 50,
                    height: 50,
                    child: MaterialButton(
                      shape: CircleBorder(side: BorderSide(width: 1,)),
                      color: Colors.red,
                      onPressed: (){},
                    ),
                  ),
                ],
              ),
              margin: const EdgeInsets.only(right: 30 , left: 30),
            ),
          ],
        ),
      )
    );
  }
}
