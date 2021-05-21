import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/responsive/Responsive.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: !isMobile(context) ? 40 : 0),
              child: Column(
                mainAxisAlignment: !isMobile(context) ? MainAxisAlignment.start : MainAxisAlignment.center,
                crossAxisAlignment: !isMobile(context) ? CrossAxisAlignment.start : CrossAxisAlignment.center,
                children: [
                  if (isMobile(context))
                    Expanded(
                      child: Image.asset(
                        'assets/main.png',
                        height: size.height * 0.4,
                      ),
                    ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'COMPRA',
                          style: TextStyle(fontSize: isDesktop(context) ? 32 : 16, fontWeight: FontWeight.w800),
                        ),
                        TextSpan(
                          text: ' AHORA',
                          style: TextStyle(
                              fontSize: 32, fontWeight: FontWeight.w800, color: Colors.green),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'Productos',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w800),
                  ),
                  Text(
                    'Online',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Ayudanos a hacer un mundo mejor para los animales',
                    textAlign: isMobile(context) ? TextAlign.center : TextAlign.start,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Wrap(
                    runSpacing: 10,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.green),
                            padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                            ),
                            animationDuration: Duration(milliseconds: 800),
                          ),
                          child: Text(
                            'COMENZAR',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(25),
                        child: TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Colors.yellow.shade700),
                            padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(horizontal: 35, vertical: 15),
                            ),
                            animationDuration: Duration(milliseconds: 800),
                          ),
                          child: Text(
                            'VER VIDEO',
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          if (isDesktop(context) || isTablet(context))
            Expanded(
              child: Image.asset(
                'assets/main.png',
                height: size.height * 0.7,
              ),
            ),
        ],
      ),
    );
  }
}
