import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/responsive/Responsive.dart';
import 'package:flutter_responsive_ui/widget/NavItem.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(
            'assets/galva_only.png',
            width: 100,
          ),
          SizedBox(
            width: 10,
          ),
          Spacer(),
          if(!isMobile(context))
            Row(
            children: [
              NavItem(
                text: 'Home',
                tapEvent: () {},
              ),
              NavItem(
                text: 'Donate',
                tapEvent: () {},
              ),
              NavItem(
                text: 'Contact us',
                tapEvent: () {},
              ),
              NavItem(
                text: 'Login',
                tapEvent: () {},
              ),
              NavItem(
                text: 'Shop',
                tapEvent: () {},
              ),
            ],
          ),
          if(isMobile(context))
            IconButton(icon: Icon(Icons.menu), onPressed: (){Scaffold.of(context).openEndDrawer();})
        ],
      ),
    );
  }
}