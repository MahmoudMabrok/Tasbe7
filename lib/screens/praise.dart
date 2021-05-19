import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/services.dart';
import 'package:seb7a/helper/save_offline.dart';
import 'package:seb7a/screens/home.dart';
import 'package:seb7a/widgets/show_message.dart';

class Praise extends StatefulWidget {
  String name;
  int value;

  Praise(this.name, this.value);

  @override
  _PraiseState createState() => _PraiseState();
}

class _PraiseState extends State<Praise> {

  TextEditingController praiseNameController;
  TextEditingController praiseValueController;
  RegExp numberRegExp = new RegExp("^[0-9]*\$");
  bool checkPraiseExist;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    praiseNameController = new TextEditingController(text: widget.name);
    praiseValueController = new TextEditingController(text: widget.value.toString());
  }

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
                      SaveOffline.editPraiseValue(widget.name, widget.value);
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
                    SaveOffline.removePraise(widget.name);
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
          //title: Text('TextField in Dialog'),
          content: Container(
            height: 115,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(right: 10 , left: 10),
            child: Column(
              children: [
                TextField(
                  controller: praiseNameController,
                  decoration: InputDecoration(
                    hintText: "dialogTextFieldName".tr().toString(),
                  ),
                ),
                TextField(
                  controller: praiseValueController,
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
                if(praiseNameController.value.text.toString().isEmpty || praiseValueController.value.text.toString().isEmpty){
                  ToastMessage.showMessage('dialogMissingDataError'.tr().toString(), Colors.red);
                } else if(!numberRegExp.hasMatch(praiseValueController.text.toString())){
                  ToastMessage.showMessage('dialogPraiseValueError'.tr().toString(), Colors.red);
                } else {
                  SaveOffline.ifPraiseExist(praiseNameController.value.text.toString()).then((value) {
                    setState(() {
                      checkPraiseExist = value;
                    });
                  });
                  if(checkPraiseExist == true){
                    ToastMessage.showMessage('dialogDuplicateDataError'.tr().toString(), Colors.red);
                  } else if(checkPraiseExist == false){
                    SaveOffline.editPraise(widget.name,praiseNameController.value.text.toString() , int.parse(praiseValueController.value.text.toString()));
                    setState(() {
                      widget.name = praiseNameController.value.text.toString();
                      widget.value = int.parse(praiseValueController.value.text.toString());
                    });
                    Navigator.pop(context);
                  }
                }
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
        title: Text(widget.name),
        actions: [
          IconButton(
              icon: Icon(Icons.edit),
              onPressed: (){
                praiseNameController.clear();
                praiseValueController.clear();
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
                      SaveOffline.editPraiseValue(widget.name , widget.value);
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
                          onPressed: (){
                            setState(() {
                              widget.value--;
                              SaveOffline.editPraiseValue(widget.name, widget.value);
                            });
                          },
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
