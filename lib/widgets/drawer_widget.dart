import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:seb7a/screens/praise.dart';
import 'package:easy_localization/easy_localization.dart';


class AppDrawer extends StatelessWidget {

  TextEditingController praiseNameController = new TextEditingController();
  TextEditingController praiseValueController = new TextEditingController();

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
                    suffixIcon: IconButton(
                      onPressed: () => praiseNameController.clear(),
                      icon: Icon(Icons.clear),
                    ),
                  ),
                ),
                TextField(
                  controller: praiseValueController,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(4),
                  ],
                  decoration: InputDecoration(
                      hintText: "dialogTextFieldValue".tr().toString(),
                      suffixIcon: IconButton(
                      onPressed: () => praiseNameController.clear(),
                      icon: Icon(Icons.clear),
                    ),
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
                  final snackBar = SnackBar(
                    content: Text('addPraise'.tr().toString()),
                    duration: Duration(seconds: 5),
                  );
                  // Find the ScaffoldMessenger in the widget tree
                  // and use it to show a SnackBar.
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                } else if(isNumeric(praiseNameController.value.text.toString()) == true){
                  final snackBar = SnackBar(
                    content: Text(''),
                    duration: Duration(seconds: 5),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
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

  bool isNumeric(String s) {
    if (s == null) {
      return false;
    }
    return double.tryParse(s) != null;
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
                onTap: ()=>_displayTextInputDialog(context)
            ),
            SizedBox(height: 5,),
          ],
        ),
      )
    );
  }
}
