import 'package:flutter/material.dart';
import 'package:seb7a/helper/save_offline.dart';
import 'package:seb7a/screens/praise.dart';

class AppDrawer extends StatefulWidget {
  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  int praiseValue;
  List<String> praisesList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  void getData() async{
    await SaveOffline.getPraiseList().then((value) {
      setState(() {
        if(value.isNotEmpty) {
          praisesList = value;
        }
    });});
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView.builder(
          itemBuilder: (context, position) {
            return Column(
              children: [
                ListTile(
                  //leading: Icon(Icons.shop),
                  title: Text(praisesList[position],style: TextStyle(color: Colors.black),),
                  onTap: (){
                    SaveOffline.getPraisevalue(praisesList[position]).then((value) => praiseValue = value);
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Praise(praisesList[position], praiseValue)));
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

