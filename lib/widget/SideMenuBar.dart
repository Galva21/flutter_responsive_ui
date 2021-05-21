import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/widget/NavItem.dart';

class SideMenuBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Colors.white,
      child: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              NavItem(
                text: 'Home',
                tapEvent: () {},
              ),
              SizedBox(height: 10,),
              NavItem(
                text: 'Donate',
                tapEvent: () {},
              ),
              SizedBox(height: 10,),
              NavItem(
                text: 'Contact us',
                tapEvent: () {},
              ),
              SizedBox(height: 10,),
              NavItem(
                text: 'Login',
                tapEvent: () {},
              ),
              SizedBox(height: 10,),
              NavItem(
                text: 'Shop',
                tapEvent: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}