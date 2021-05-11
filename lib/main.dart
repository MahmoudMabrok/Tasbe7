import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:seb7a/screens/home.dart';

void main()=>runApp(EasyLocalization(
  child: MyApp(),
  path: "resources",
  saveLocale: true,
  supportedLocales: [
    Locale('ar','AR'),
  ],
));

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "appName".tr().toString(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: Home(),
    );
  }
}