import 'package:flutter/material.dart';
import 'package:seb7a/helper/save_offline.dart';
import 'package:seb7a/screens/praise.dart';

class AppDrawer extends StatefulWidget {
  List<String> praises;
  bool isListHaveData;

  AppDrawer(this.praises , this.isListHaveData);

  @override
  _AppDrawerState createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  int praiseValue;

  @override
  Widget build(BuildContext context) {
    print(widget.isListHaveData);
    return  Drawer(
        child: widget.isListHaveData == true ? ListView.builder(
          itemBuilder: (context, position) {
            return Column(
              children: [
                ListTile(
                  //leading: Icon(Icons.shop),
                  title: Text(widget.praises[position],style: TextStyle(color: Colors.black),),
                  onTap: (){
                    SaveOffline.getPraisevalue(widget.praises[position]).then((value) => praiseValue = value);
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Praise(widget.praises[position], praiseValue)));
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
          itemCount: widget.praises.length,
        ) : SizedBox(),
    );
  }
}

