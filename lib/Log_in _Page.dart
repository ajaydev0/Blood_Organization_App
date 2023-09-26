// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, camel_case_types

import 'package:blood_org_app/UI/Ui_Content.dart';
import 'package:blood_org_app/UI/Widgets/AppSize_MediaQuery.dart';
import 'package:blood_org_app/UI/Widgets/Container_Widget.dart';
import 'package:blood_org_app/UI/Widgets/SizeBox_Widget.dart';
import 'package:blood_org_app/UI/Widgets/Text_Widget.dart';
import 'package:flutter/material.dart';

class Log_In_Page extends StatefulWidget {
  const Log_In_Page({super.key});

  @override
  State<Log_In_Page> createState() => _Log_In_PageState();
}

class _Log_In_PageState extends State<Log_In_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Kcontainer(
                h: Kh(context: context, value: 16),
                w: Kw(context: context, value: 34),
                child: Kcontainer(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(image.Login_Screen_Img)),
                  ),
                ),
                decoration: BoxDecoration(
                  color: appcolors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 20.0,
                        offset: Offset(0, 0),
                        color: appcolors.redWithOpacity),
                  ],
                ),
              ),
              KsBox(h: Kh(context: context, value: 5)),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: TextFormField(
                  decoration: InputDecoration(
                      iconColor: Color.fromARGB(255, 161, 5, 5).withOpacity(.3),
                      hintStyle: TextStyle(),
                      hintText: "USER ID"),
                ),
              ),
              KsBox(h: Kh(context: context, value: 2)),
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50),
                child: TextFormField(
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.visibility), hintText: "PASSWORD"),
                ),
              ),
              KsBox(h: Kh(context: context, value: 1)),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Ktext(
                    text: "forgot password",
                    fontStyle: FontStyle.italic,
                    weight: FontWeight.bold,
                    size: 12,
                  ),
                  KsBox(w: 50),
                ],
              ),
              KsBox(h: Kh(context: context, value: 4)),
              Kcontainer(
                h: 50,
                w: 170,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 20.0,
                        offset: Offset(0, 5),
                        color: appcolors.redWithOpacity),
                  ],
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment(0.8, 1),
                    colors: [
                      Color.fromARGB(255, 228, 14, 14),
                      Color.fromARGB(255, 150, 3, 3),
                      Color.fromARGB(255, 100, 2, 2),
                    ],
                    tileMode: TileMode.mirror,
                  ),
                ),
                child: Center(
                    child: Ktext(
                  text: "LOGIN",
                  color: Colors.white,
                  letterSpacing: 0.5,
                )),
              ),
              KsBox(
                h: Kh(context: context, value: 4),
              ),
              Ktext(
                text: "Don't have an account!",
                color: Colors.black,
                weight: FontWeight.bold,
              ),
              KsBox(h: Kh(context: context, value: 1)),
              Ktext(
                  text: "SIGNUP",
                  color: appcolors.red,
                  weight: FontWeight.bold),
            ],
          ),
        ),
      ),
    );
  }
}
