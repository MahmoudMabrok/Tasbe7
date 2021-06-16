import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:seb7a/helper/db_helper.dart';
import 'package:seb7a/helper/save_offline.dart';
import 'package:seb7a/screens/home.dart';
import 'package:seb7a/widgets/show_message.dart';
import 'package:vibration/vibration.dart';

class Praise extends StatefulWidget {
  String name;
  int value;
  int id;

  Praise(this.name, this.value , this.id);

  @override
  _PraiseState createState() => _PraiseState();
}

class _PraiseState extends State<Praise> {

  RegExp numberRegExp = new RegExp("^[0-9]*\$");
  bool checkPraiseExist;
  String name = '';
  int value = -1;
  Color buttonColor = HexColor("D6A472");

  void clearPraise(BuildContext context){
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))
            ),
            //title: Text("Alert Dialog"),
            content: Text("clearPraise".tr().toString()),
            actions: <Widget>[
              FlatButton(
                  onPressed: (){
                    setState(() {
                      widget.value = 0;
                      DBHelper.editValue(widget.id, 0);
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
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0))
            ),
            //title: Text("Alert Dialog"),
            content: Text("deletePraise".tr().toString()),
            actions: <Widget>[
              FlatButton(
                  onPressed: (){
                    DBHelper.removePraise(widget.id);
                    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => Home()), (Route<dynamic> route) => false);
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

  void editPraise(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))
          ),
          //title: Text('TextField in Dialog'),
          content: Container(
            height: 115,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(right: 10 , left: 10),
            child: Column(
              children: [
                TextFormField(
                  initialValue: widget.name,
                  //controller: praiseNameController,
                  onChanged: (v){
                    setState(() {
                      name = v;
                    });
                  },
                  decoration: InputDecoration(
                    hintText: "dialogTextFieldName".tr().toString(),
                  ),
                ),
                TextFormField(
                  initialValue: widget.value.toString(),
                  onChanged: (v){
                    setState(() {
                      value = int.parse(v.toString());
                    });
                  },
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(4),
                  ],
                  decoration: InputDecoration(
                    hintText: "dialogTextFieldValue".tr().toString(),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('dialogCancleButton'.tr().toString()),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            FlatButton(
              child: Text('dialogEditButton'.tr().toString()),
              onPressed: () {
                setState(() {
                  if(name == ''){
                    ToastMessage.showMessage('dialogMissingDataError'.tr().toString(), Colors.red);
                  } else if(value != -1 && !numberRegExp.hasMatch(value.toString())){
                    ToastMessage.showMessage('dialogPraiseValueError'.tr().toString(), Colors.red);
                  } else {
                    widget.name = name;
                    widget.value = value;
                    if(value == -1){
                      DBHelper.editName(widget.id, name, widget.value);
                    } else if(value != -1){
                      DBHelper.editName(widget.id, name , value);
                    }
                    Navigator.pop(context);
                  }
                });
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor("#16202A"),
        title: Text(widget.name),
        actions: [
          IconButton(
              icon: Icon(Icons.edit),
              onPressed: (){
                setState(() {
                  name = widget.name;
                  value = widget.value;
                });
                editPraise(context);
              }
          ),
          IconButton(
              icon: Icon(Icons.refresh),
              onPressed: ()=>clearPraise(context)
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image/one.jpeg'), fit: BoxFit.cover,),
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
                  child: Center(
                    child: Text('اضفط هنا' , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 40),),
                  ),
                  color: buttonColor,
                  onPressed: (){
                    setState(() {
                      widget.value++;
                      Vibration.vibrate(duration: 50);
                      //HapticFeedback.heavyImpact();
                      DBHelper.editValue(widget.id, widget.value).then((_) => print('success')).catchError((e) =>print(e));
                    });
                  },
                ),
              ),
              SizedBox(height: 50,),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(icon: Icon(Icons.delete_rounded),color: Colors.grey  ,iconSize: 50, onPressed: ()=>deletePraise(context)),
                    InkWell(
                      child: Image.asset('assets/image/minus.png' , height: 50 , width: 50,),
                      onTap: (){
                        setState(() {
                          Vibration.vibrate(duration: 50);
                          if(widget.value>0){
                            widget.value--;
                            SaveOffline.incrementPraiseValue(widget.name, widget.value);
                          }
                        });
                      },
                    )
                  ],
                ),
                margin: const EdgeInsets.only(right: 10 , left: 30),
              ),
            ],
          ),
        ),
      )
    );
  }
}
