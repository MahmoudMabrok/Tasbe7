import 'package:flutter/material.dart';
import 'package:seb7a/helper/db_helper.dart';
import 'package:seb7a/helper/save_offline.dart';
import 'package:seb7a/screens/praise.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  List<dynamic> praisesList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    DBHelper.getData('praise_table').then((value) {
      print(value);
      setState(() {
        praisesList = value;
      });
    });
  }



  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView.builder(
          itemBuilder: (context, position) {
            return Column(
              children: [
                //SizedBox(height: 30,),
                   ListTile(
                     leading: Image.asset('assets/image/pray.png' , height: 30,color: Colors.blue,),
                     trailing: Container(
                         width: 30,
                         height: 30,
                         decoration: BoxDecoration(
                             color: Colors.blue,
                             borderRadius: BorderRadius.circular(100),
                             border: Border.all(width: 2, color: Colors.blue)),
                         child: Center(
                             child: praisesList[position]['praiseValue'] > 99 ? Text('+99',style: TextStyle(color: Colors.white , fontSize: 12),) : Text(praisesList[position]['praiseValue'].toString(),style: TextStyle(color: Colors.white , fontSize: 12),)
                         )
                     ),
                     title: Text(praisesList[position]['praiseName'],style: TextStyle(color: Colors.black),),
                     onTap: (){
                       Navigator.pop(context);
                       Navigator.push(context, MaterialPageRoute(builder: (context) => Praise(praisesList[position]['praiseName'].toString(), praisesList[position]['praiseValue'] , praisesList[position]['id'])));
                     },
                   ),
                Container(
                  margin: const EdgeInsets.only(right: 10 , left: 10),
                  child: Divider(
                    thickness: 1,
                    color: Colors.grey,
                  ),
                ),
              ],
            );
          },
          itemCount: praisesList.length,
        ),
    );
  }
}

