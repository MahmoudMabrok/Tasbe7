import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nice_button/NiceButton.dart';
import 'package:seb7a/helper/db_helper.dart';
import 'package:seb7a/screens/evning_azkar.dart';
import 'package:seb7a/screens/my_praises.dart';
import 'package:seb7a/screens/praise.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:seb7a/screens/praise_competition.dart';
import 'package:seb7a/widgets/show_message.dart';
import 'morning_azkar.dart';

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
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))
          ),
          //title: Text('TextField in Dialog'),
          content: SingleChildScrollView(
            child: Container(
              height: 55,
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
                ],
              ),
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('dialogAddButton'.tr().toString()),
              onPressed: () {
                if(praiseNameController.value.text.toString().isEmpty){
                  ToastMessage.showMessage('dialogMissingDataError'.tr().toString(), Colors.red);
                } else {
                  DBHelper.addPraise('praise_table', {
                    'praiseName': praiseNameController.value.text.toString(),
                    'praiseValue': 0
                  }).then((value) {
                    setState(() {
                      id = value[0]['id'];
                    });
                    print('success');
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Praise(praiseNameController.value.text.toString(), 0 , id)));
                  }).catchError((error) => print(error));
                }
              },
            ),
            FlatButton(
                child: Text('dialogCancleButton'.tr().toString() , style: TextStyle(color: Colors.red),),
                onPressed: ()=>Navigator.pop(context)
            ),
          ],
        );
      },
    );
  }

  void addPraiseChallenge(BuildContext context) async{
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0))
          ),
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
                    hintText: "challenageDialogTextFieldValue".tr().toString(),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('dialogAddButton'.tr().toString()),
              onPressed: () {
                if(praiseNameController.value.text.toString().isEmpty || praiseValueController.value.text.isEmpty){
                  ToastMessage.showMessage('challengDialogMissingDataError'.tr().toString(), Colors.red);
                } else if(!numberRegExp.hasMatch(praiseValueController.text.toString())){
                  ToastMessage.showMessage('dialogPraiseValueError'.tr().toString(), Colors.red);
                } else {
                  Navigator.pop(context);
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Praisecompetition(praiseNameController.value.text.toString(), 0 , int.parse(praiseValueController.value.text.toString()))));
                }
              },
            ),
            FlatButton(
              child: Text('dialogCancleButton'.tr().toString() , style: TextStyle(color: Colors.red),),
              onPressed: () {
                Navigator.pop(context);
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
      //drawer: AppDrawer(),
      appBar: AppBar(
        title: Text("homeAppBarTittle".tr().toString() , style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),
      body:  Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image/bg.jpeg'), fit: BoxFit.fill,),
          //shape: BoxShape.circle,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 100,),
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
                text: "myPraises".tr().toString(),
                gradientColors: [secondColor, firstColor],
                onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => MyPraises())),
              ),
              SizedBox(height: 20,),
              NiceButton(
                radius: 40,
                padding: const EdgeInsets.all(15),
                text: "MorningAzkar".tr().toString(),
                gradientColors: [secondColor, firstColor],
                onPressed: ()=>Navigator.push(context, MaterialPageRoute(builder: (context) => Morningazkar())),
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
      ),
    );
  }
}
