import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        height: size.height,
        child: ListView(
          shrinkWrap: false,
          scrollDirection: Axis.vertical,
          children: [
            SafeArea(
              top: false,
              bottom: false,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      SvgPicture.asset(
                        'assets/icons/back.svg',
                        fit: BoxFit.scaleDown,
                      ),
                      SizedBox(
                        height: 65,
                      ),
                      Text(
                        'Enter your 4-digit code',
                        style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF000000),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        'Code',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF7C7C7C),
                        ),
                      ),
                      TextField(
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(),
                          hintText: '- - - -',
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Resend Code',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFF7C7C7C),
                            ),
                          ),
                          Container(
                            width: 67,
                            height: 67,
                            decoration: BoxDecoration(
                              color: Color(0xFF53B175),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: SvgPicture.asset(
                              'assets/icons/right.svg',
                              fit: BoxFit.scaleDown,
                              height: 18,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
