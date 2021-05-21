import 'package:flutter/material.dart';

class NavItem extends StatelessWidget {
  const NavItem({Key key, this.text, this.tapEvent}) : super(key: key);

  final String text;
  final GestureTapCallback tapEvent;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: tapEvent,
      style: TextButton.styleFrom(
        animationDuration: Duration(milliseconds: 800),
        backgroundColor: Colors.transparent,
        padding: EdgeInsets.symmetric(horizontal: 20),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w300, fontSize: 15),
      ),
    );
  }
}
