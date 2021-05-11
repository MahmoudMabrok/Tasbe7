import 'package:flutter/material.dart';
import 'package:seb7a/screens/praise.dart';

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
            height: 110,
            child: Column(
              children: [
                TextField(
                  controller: praiseNameController,
                  decoration: InputDecoration(hintText: "الاسم"),
                ),
                TextField(
                  controller: praiseValueController,
                  decoration: InputDecoration(hintText: "القيمة"),
                  keyboardType: TextInputType.number,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('الغاء'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            FlatButton(
              child: Text('اضافة'),
              onPressed: () {
                if(praiseNameController.value.text.toString().isEmpty || praiseValueController.value.text.toString().isEmpty){
                  final snackBar = SnackBar(
                    content: Text(''),
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
        color: Colors.black54,
        child: Column(
          children: <Widget>[
            SizedBox(height: 30,),
            ListTile(
                trailing: Icon(Icons.add),
                title: Text('أضافة عداد',style: TextStyle(color: Colors.black),),
                onTap: ()=>_displayTextInputDialog(context)
            ),
            SizedBox(height: 5,),
          ],
        ),
      )
    );
  }
}
