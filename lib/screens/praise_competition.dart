import 'dart:async';

import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_beautiful_popup/main.dart';
import 'dart:math';
import 'package:easy_localization/easy_localization.dart';
import 'package:hexcolor/hexcolor.dart';

class Praisecompetition extends StatefulWidget {

  String name;
  int initialValue;
  int maxValue;


  Praisecompetition(this.name, this.initialValue , this.maxValue);

  @override
  _PraisecompetitionState createState() => _PraisecompetitionState();
}

class _PraisecompetitionState extends State<Praisecompetition> {

  ConfettiController _controllerBottomCenter;
  var buttonColor = Colors.red;

  @override
  void initState() {
    _controllerBottomCenter =
        ConfettiController(duration: const Duration(seconds: 5));
    super.initState();
  }

  @override
  void dispose() {
    _controllerBottomCenter.dispose();
    super.dispose();
  }

  /// A custom Path to paint stars.
  Path drawStar(Size size) {
    // Method to convert degree to radians
    double degToRad(double deg) => deg * (pi / 180.0);

    const numberOfPoints = 5;
    final halfWidth = size.width / 2;
    final externalRadius = halfWidth;
    final internalRadius = halfWidth / 2.5;
    final degreesPerStep = degToRad(360 / numberOfPoints);
    final halfDegreesPerStep = degreesPerStep / 2;
    final path = Path();
    final fullAngle = degToRad(360);
    path.moveTo(size.width, halfWidth);

    for (double step = 0; step < fullAngle; step += degreesPerStep) {
      path.lineTo(halfWidth + externalRadius * cos(step),
          halfWidth + externalRadius * sin(step));
      path.lineTo(halfWidth + internalRadius * cos(step + halfDegreesPerStep),
          halfWidth + internalRadius * sin(step + halfDegreesPerStep));
    }
    path.close();
    return path;
  }

  void clearPraise(BuildContext context){
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            //title: Text("Alert Dialog"),
            content: Text("clearPraise".tr().toString()),
            actions: <Widget>[
              FlatButton(
                  onPressed: (){
                    setState(() {
                      widget.initialValue = 0;
                      changeButtonColor();
                      Navigator.pop(context);
                    });
                  },
                  child: Text("yesButton".tr().toString())

              ),
              FlatButton(
                  onPressed: (){
                    Navigator.of(context).pop(true);
                  },
                  child: Text("noButton".tr().toString())
              ),
            ],
          );
        });
  }

  void changeButtonColor(){
    if(widget.initialValue >= widget.maxValue-3){
    setState(() {
    buttonColor = Colors.green;
    });
    }
    else if(widget.initialValue >= widget.maxValue/2)
      {
        setState(() {
          buttonColor = Colors.yellow;
        });
      }
     else if(widget.initialValue <= widget.maxValue/2){
      setState(() {
        buttonColor = Colors.red;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor("#16202A"),
        title: Text(widget.name),
        actions: [
          IconButton(
              icon: Icon(Icons.refresh),
              onPressed: ()=>clearPraise(context)
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/image/praise.jpeg'), fit: BoxFit.cover,),
            //shape: BoxShape.circle,
          ),
          child: Column(
            children: [
              SizedBox(height: 40,),
              //Max value is = million
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("عدد التسبيحات" , style: TextStyle(color: Colors.white ,fontWeight: FontWeight.bold , fontSize: 20),),
                    SizedBox(width: 50,),
                    Text(widget.initialValue.toString() , style: TextStyle(color: Colors.white , fontSize: 50 , fontWeight: FontWeight.bold),),
                  ],
                ),
              SizedBox(height: 25,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("الحد الاقصى للتسبيح" , style: TextStyle(color: Colors.white ,fontWeight: FontWeight.bold , fontSize: 20),),
                  SizedBox(width: 10,),
                  Text(widget.maxValue.toString() , style: TextStyle(color: Colors.white , fontSize: 50 , fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(height: 100,),
              Container(
                width: 200,
                height: 200,
                child: MaterialButton(
                  shape: CircleBorder(side: BorderSide(width: 1,)),
                  color: buttonColor,
                  onPressed: (){
                    setState(() {
                      if(widget.initialValue < widget.maxValue){
                        widget.initialValue++;
                        if(widget.initialValue == widget.maxValue){
                          setState(() {
                            _controllerBottomCenter.play();
                            Timer(Duration(seconds:3),(){
                              setState(() {
                                final popup = BeautifulPopup(
                                  context: context,
                                  template: TemplateGift,
                                );
                                popup.show(
                                  title: 'popupTitle'.tr().toString(),
                                  content: '',
                                  actions: [
                                    popup.button(
                                      label: 'close'.tr().toString(),
                                      onPressed: (){
                                        setState(() {
                                          widget.initialValue = 0;
                                          changeButtonColor();
                                          Navigator.pop(context);
                                        });
                                      },
                                    ),
                                  ],
                                  // bool barrierDismissible = false,
                                  // Widget close,
                                );
                              });
                            });
                          });
                        }
                        changeButtonColor();
                      }
                    });
                  },
                ),
              ),
              SizedBox(height: 50,),
              Container(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ConfettiWidget(
                    confettiController: _controllerBottomCenter,
                    blastDirection: -pi / 2,
                    emissionFrequency: 0.01,
                    numberOfParticles: 20,
                    maxBlastForce: 100,
                    minBlastForce: 80,
                    gravity: 0.3,
                  ),
                ),
                margin: const EdgeInsets.only(right: 10 , left: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
