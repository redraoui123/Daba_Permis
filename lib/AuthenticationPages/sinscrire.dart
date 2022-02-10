import 'package:dabaPermis/AuthenticationPages/sinscrire1.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:page_transition/page_transition.dart';

class Sinscrire extends StatefulWidget {
  Sinscrire({Key key}) : super(key: key);

  @override
  _SinscrireState createState() => _SinscrireState();
}

class _SinscrireState extends State<Sinscrire> {
  bool _showpass = false;
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
          height: 95.h,
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 28.h, bottom: 28.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'S’inscrire',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromRGBO(51, 139, 226, 1),
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w800,
                      fontSize: 28.sp,
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
                fontWeight: FontWeight.w800,
                fontSize: 16.sp,
                height: 1.5,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(left: 14, right: 24),
                      child: Icon(
                        FeatherIcons.phone,
                        size: 30,
                        color: Colors.grey[500],
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
                    hintText: 'Numéro de téléphone'),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25.h, left: 20.w, right: 20.w),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(left: 14, right: 24),
                      child: Icon(
                        FeatherIcons.user,
                        size: 30,
                        color: Colors.grey[500],
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
                obscureText: _showpass == false ? true : false,
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                    prefixIcon: Padding(
                      padding: EdgeInsets.only(left: 14, right: 24),
                      child: Icon(
                        FeatherIcons.lock,
                        size: 30,
                        color: Colors.grey[500],
                      ),
                    ),
                    suffixIcon: Padding(
                      padding: EdgeInsets.only(left: 14, right: 24),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            _showpass = !_showpass;
                          });
                        },
                        child: Icon(
                          _showpass == false
                              ? FeatherIcons.eyeOff
                              : FeatherIcons.eye,
                          size: 25,
                          color: Colors.grey[500],
                        ),
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
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          'Clicking Create account means that you agree to our ',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700,
                        fontSize: 15.sp,
                        height: 1.5,
                      ),
                    ),
                    TextSpan(
                      text: 'service agreement ',
                      style: TextStyle(
                        color: Color.fromRGBO(51, 139, 226, 1),
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700,
                        fontSize: 17.sp,
                        height: 1.5,
                      ),
                    ),
                    TextSpan(
                      text: 'and ',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700,
                        fontSize: 15.sp,
                        height: 1.5,
                      ),
                    ),
                    TextSpan(
                      text: 'privacy  ',
                      style: TextStyle(
                        color: Color.fromRGBO(51, 139, 226, 1),
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700,
                        fontSize: 17.sp,
                        height: 1.5,
                      ),
                    ),
                    TextSpan(
                      text: 'and ',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700,
                        fontSize: 15.sp,
                        height: 1.5,
                      ),
                    ),
                    TextSpan(
                      text: 'cookies statement.',
                      style: TextStyle(
                        color: Color.fromRGBO(51, 139, 226, 1),
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700,
                        fontSize: 17.sp,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    PageTransition(
                        type: PageTransitionType.rightToLeft,
                        duration: Duration(milliseconds: 500),
                        child: Sinscrire1()));
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
                  'Créer mon compte',
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
              height: 40.h,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 60.h, left: 40.w, right: 40.w),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Vous avez déjà un compte?',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w700,
                        fontSize: 17.sp,
                        height: 1.5,
                      ),
                    ),
                    TextSpan(
                      text: '  Connexion',
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
