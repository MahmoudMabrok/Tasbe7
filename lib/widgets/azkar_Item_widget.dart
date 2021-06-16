import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:share/share.dart';


class AzkarItem extends StatelessWidget {
  String description , value , number;

  AzkarItem({
    this.description,
    this.value,
    this.number
});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
              Radius.circular(15.0) //                 <--- border radius here
          ),
        color: Colors.blue
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            //margin: const EdgeInsets.all(1),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                    Radius.circular(15.0) //                 <--- border radius here
                ),
                color: Colors.white
            ),
            child: Column(
              children: [
                Text(description , style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(height: 8,),
                Text(value)
              ],
            ),
          ),
          SizedBox(height: 8,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Text("repeat".tr().toString(), style: TextStyle(fontWeight: FontWeight.bold , color: Colors.white),),
                  SizedBox(width: 5,),
                  Container(
                    width: 30,
                    height: 30,
                    child: Center(
                      child: Text(number),
                    ),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white),
                  ),
                ],
              ),
              InkWell(
                onTap: (){
                  Share.share('الذكر:'+"\n"+description+"\n"+value+"\n"+"عدد المرات= "+number);
                },
                child: Row(
                  children: [
                    Text("share".tr().toString(), style: TextStyle(fontWeight: FontWeight.bold , color: Colors.white),),
                    SizedBox(width: 2,),
                    IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.share , color: Colors.white,))
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: 6,)
        ],
      ),
    );
  }
}
