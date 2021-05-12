import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:seb7a/helper/save_offline.dart';

class Praise extends StatefulWidget {
  String name;
  int value;

  Praise(this.name, this.value);

  @override
  _PraiseState createState() => _PraiseState();
}

class _PraiseState extends State<Praise> {

  void clearPraise(BuildContext context){
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            //title: Text("Alert Dialog"),
            content: Text("clearPraise".tr().toString()),
            actions: <Widget>[
              FlatButton(
                  onPressed: (){
                    setState(() {
                      widget.value = 0;
                      Navigator.pop(context);
                    });
                  },
                  child: Text("yesButton".tr().toString())

              ),
              FlatButton(
                  onPressed: (){
                    Navigator.of(context).pop(true);
                  },
                  child: Text("noButton".tr().toString())
              ),
            ],
          );
        });
  }

  void deletePraise(BuildContext context){
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            //title: Text("Alert Dialog"),
            content: Text("deletePraise".tr().toString()),
            actions: <Widget>[
              FlatButton(
                  onPressed: (){

                  },
                  child: Text("yesButton".tr().toString())

              ),
              FlatButton(
                  onPressed: (){
                    Navigator.of(context).pop(true);
                  },
                  child: Text("noButton".tr().toString())
              ),
            ],
          );
        });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image/praise.jpeg'), fit: BoxFit.cover,),
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
                  onPressed: (){
                    setState(() {
                      widget.value++;
                      SaveOffline.saveTokenOffline(widget.name, widget.value);
                    });
                  },
                ),
              ),
              SizedBox(height: 50,),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(icon: Icon(Icons.delete),color: Colors.grey  ,iconSize: 50, onPressed: ()=>deletePraise(context)),
                    Container(
                      width: 50,
                      height: 50,
                      child: MaterialButton(
                        shape: CircleBorder(side: BorderSide(width: 1,)),
                        color: Colors.red,
                        onPressed: ()=>clearPraise(context),
                      ),
                    ),
                  ],
                ),
                margin: const EdgeInsets.only(right: 30 , left: 30),
              ),
            ],
          ),
        ),
      )
    );
  }
}
