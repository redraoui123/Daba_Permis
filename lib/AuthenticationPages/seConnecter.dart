import 'package:dabaPermis/AuthenticationPages/sinscrire.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:page_transition/page_transition.dart';

Color emailColor = Colors.grey[500];
Color passwordColor = Colors.grey[500];

class SeConn extends StatefulWidget {
  const SeConn({Key key}) : super(key: key);

  @override
  _Myapp3State createState() => _Myapp3State();
}

class _Myapp3State extends State<SeConn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 150.h,
        centerTitle: true,
        backgroundColor: Color.fromRGBO(51, 139, 226, 1),
        leading: Padding(
          padding: EdgeInsets.only(top: 15.h),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              FeatherIcons.arrowLeft,
              size: 35,
              color: Colors.white,
            ),
          ),
        ),
        title: Image.asset(
          'images/Logo_white.png',
          height: 120.h,
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 28.h, bottom: 20.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Se connecter',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromRGBO(51, 139, 226, 1),
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w800,
                      fontSize: 29.sp,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'Lorem ipsum dolor sit amet, purus consectetur adipiscing elit ut aliquam, purus',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(51, 139, 226, 1),
                fontFamily: 'Lato',
                fontWeight: FontWeight.w600,
                fontSize: 16.sp,
                height: 1.5,
              ),
            ),
            SizedBox(
              height: 70.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: TextField(
                onTap: () {
                  print('tapped');
                  setState(() {
                    emailColor = Color.fromRGBO(51, 139, 226, 1);
                    passwordColor = Colors.grey[500];
                  });
                },
                decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(left: 14, right: 24),
                      child: Icon(
                        FeatherIcons.user,
                        size: 30,
                        //color: Colors.grey[500],
                        color: emailColor,
                      ),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    // input border style
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide:
                          BorderSide(color: Colors.grey[400], width: 2.0),
                    ),
                    // focused input border style
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(
                          color: Color.fromRGBO(51, 139, 226, 1), width: 2.0),
                    ),
                    hintText: 'Email'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25.h, left: 20.w, right: 20.w),
              child: TextField(
                onTap: () {
                  setState(() {
                    passwordColor = Color.fromRGBO(51, 139, 226, 1);
                    emailColor = Colors.grey[500];
                  });
                },
                obscureText: true,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(left: 14, right: 24),
                      child: Icon(
                        FeatherIcons.lock,
                        size: 30,
                        color: passwordColor,
                      ),
                    ),
                    fillColor: Colors.white,
                    filled: true,
                    // input border style
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide:
                          BorderSide(color: Colors.grey[400], width: 2.0),
                    ),
                    // focused input border style
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(
                          color: Color.fromRGBO(51, 139, 226, 1), width: 2.0),
                    ),
                    hintText: 'Mot de passe'),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Text(
              'Mot de passe oubliée ?',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(51, 139, 226, 1),
                fontFamily: 'Lato',
                fontWeight: FontWeight.w700,
                fontSize: 17.sp,
                height: 1.5,
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            InkWell(
              onTap: () {
                print('Se Connecter Tapped !!');
              },
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(51, 139, 226, 1),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                width: 335,
                height: 55,
                child: Text(
                  'Se connecter',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w700,
                    fontSize: 17.sp,
                    height: 1.5,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 70.h,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 60.h, left: 40.w, right: 40.w),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Vous n\'avez pas de compte ?',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700,
                        fontSize: 17.sp,
                        height: 1.5,
                      ),
                    ),
                    TextSpan(
                      text: '  S\'inscrire',
                      style: TextStyle(
                        color: Color.fromRGBO(51, 139, 226, 1),
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700,
                        fontSize: 18.sp,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
