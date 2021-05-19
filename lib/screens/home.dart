import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:seb7a/helper/save_offline.dart';
import 'package:seb7a/screens/praise.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:seb7a/widgets/drawer_widget.dart';
import 'package:seb7a/widgets/show_message.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController praiseNameController = new TextEditingController();
  TextEditingController praiseValueController = new TextEditingController();
  RegExp numberRegExp = new RegExp("^[0-9]*\$");
  bool checkPraiseExist;

  void addNewPraise(BuildContext context) async {
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
              child: Text('dialogAddButton'.tr().toString()),
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
                    SaveOffline.savePraiseOffline(praiseNameController.value.text.toString(), int.parse(praiseValueController.value.text.toString()));
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Praise(praiseNameController.value.text.toString(), int.parse(praiseValueController.value.text.toString()))));
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
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text("homeAppBarTittle".tr().toString() , style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(Icons.add),
              onPressed: (){
                praiseNameController.clear();
                praiseValueController.clear();
                addNewPraise(context);
              }
          )
        ],
      ),
      body:  Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image/bg.jpeg'), fit: BoxFit.fill,),
          //shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),

      ),
    );
  }
}
