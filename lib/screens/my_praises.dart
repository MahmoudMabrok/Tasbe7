import 'package:flutter/material.dart';
import 'package:seb7a/helper/db_helper.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:seb7a/screens/praise.dart';

class MyPraises extends StatefulWidget {
  const MyPraises({Key key}) : super(key: key);

  @override
  _MyPraisesState createState() => _MyPraisesState();
}

class _MyPraisesState extends State<MyPraises> {

  List<dynamic> praisesList = [];
  final snackBar = SnackBar(
    content: Text('noPraisesExist'.tr().toString()),
    action: SnackBarAction(
      label: 'ok'.tr().toString(),
      onPressed: () {
        // Some code to undo the change.
      },
    ),
  );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    DBHelper.getData('praise_table').then((value) {
      setState(() {
        praisesList = value;
        if(praisesList.isEmpty){
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        }
      });
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('myPraises'.tr().toString()),
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
        child: praisesList.isNotEmpty ? ListView.builder(itemCount: praisesList.length , itemBuilder: (ctx , pos){
          return Container(
            margin: const EdgeInsets.all(10),
            child: Card(
              elevation: 8,
              child: ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Praise(praisesList[pos]['praiseName'].toString(), praisesList[pos]['praiseValue'] , praisesList[pos]['id'])));
                },
                leading:CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: praisesList[pos]['praiseValue'] > 99 ? Text("+99") : Text(praisesList[pos]['praiseValue'].toString()),
                ),
                title: Text(praisesList[pos]['praiseName'] , style: TextStyle(fontWeight: FontWeight.bold),),
                trailing: Icon(Icons.arrow_forward_ios),
              ),
            ),
          );
        }) : SizedBox()

      )
    );
  }
}
