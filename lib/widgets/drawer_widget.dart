import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:seb7a/screens/praise.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:seb7a/widgets/show_message.dart';


class AppDrawer extends StatelessWidget {

  TextEditingController praiseNameController = new TextEditingController();
  TextEditingController praiseValueController = new TextEditingController();
  String error = "";
  RegExp numberRegExp = new RegExp("^[0-9]*\$");

   void _displayTextInputDialog(BuildContext context) async {
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
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Praise(praiseNameController.value.text.toString(), int.parse(praiseValueController.value.text.toString())))
                  );
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
    return Drawer(
      child: Container(
        //color: Colors.black54,
        child: Column(
          children: <Widget>[
            SizedBox(height: 30,),
            ListTile(
                trailing: Icon(Icons.add),
                title: Text('addPraise'.tr().toString(),style: TextStyle(color: Colors.black),),
                onTap: (){
                  Navigator.pop(context);
                  _displayTextInputDialog(context);
                }
            ),
            SizedBox(height: 5,),
          ],
        ),
      )
    );
  }
}
