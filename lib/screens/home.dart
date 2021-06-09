import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nice_button/NiceButton.dart';
import 'package:seb7a/helper/db_helper.dart';
import 'package:seb7a/screens/evning_azkar.dart';
import 'package:seb7a/screens/morning_azkar.dart';
import 'package:seb7a/screens/praise.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:seb7a/screens/praise_competition.dart';
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
  var firstColor = Color(0xff5b86e5), secondColor = Color(0xff36d1dc);
  int id;

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
                    setState(() {
                      DBHelper.addPraise('praise_table', {
                        'praiseName': praiseNameController.value.text.toString(),
                        'praiseValue': int.parse(praiseValueController.value.text.toString())
                      }).then((value) {
                        setState(() {
                          id = value[0]['id'];
                        });
                        print('success');
                      }).catchError((error) => print(error));
                      Navigator.pop(context);
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Praise(praiseNameController.value.text.toString(), int.parse(praiseValueController.value.text.toString()) , id)));
                    });
                  
                }
              },
            ),
          ],
        );
      },
    );
  }

  void addPraiseChallenge(BuildContext context) async {
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
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Praisecompetition(praiseNameController.value.text.toString(), 0 , int.parse(praiseValueController.value.text.toString()))));
                }
              },
            ),
          ],
        );
      },
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    DBHelper.getData('praise_table').then((value) => print(value));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text("homeAppBarTittle".tr().toString() , style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body:  Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image/bg.jpeg'), fit: BoxFit.fill,),
          //shape: BoxShape.circle,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            NiceButton(
              radius: 40,
              padding: const EdgeInsets.all(15),
              text: "addPraise".tr().toString(),
              gradientColors: [secondColor, firstColor],
              onPressed: (){
                praiseNameController.clear();
                praiseValueController.clear();
                addNewPraise(context);
              }
            ),
            SizedBox(height: 20,),
            NiceButton(
              radius: 40,
              padding: const EdgeInsets.all(15),
              text: "myChallenges".tr().toString(),
              gradientColors: [secondColor, firstColor],
              onPressed: (){
                praiseNameController.clear();
                praiseValueController.clear();
                addPraiseChallenge(context);
              }
            ),
            SizedBox(height: 20,),
            NiceButton(
              radius: 40,
              padding: const EdgeInsets.all(15),
              text: "MorningAzkar".tr().toString(),
              gradientColors: [secondColor, firstColor],
              onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => MorningAzkar())),
            ),
            SizedBox(height: 20,),
            NiceButton(
              radius: 40,
              padding: const EdgeInsets.all(15),
              text: "EvningAzkar".tr().toString(),
              gradientColors: [secondColor, firstColor],
              onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => EvningAzkar())),
            ),
          ],
        ),

      ),
    );
  }
}
