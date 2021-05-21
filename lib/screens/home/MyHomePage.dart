import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/widget/Body.dart';
import 'package:flutter_responsive_ui/widget/Footer.dart';
import 'package:flutter_responsive_ui/widget/NavBar.dart';
import 'package:flutter_responsive_ui/widget/SideMenuBar.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      endDrawer: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: 300,
        ),
        child: SideMenuBar(),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: size.width,
            constraints: BoxConstraints(
              minHeight: size.height,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[NavBar(), Body(), Footer()],
            ),
          ),
        ),
      ),
    );
  }
}
