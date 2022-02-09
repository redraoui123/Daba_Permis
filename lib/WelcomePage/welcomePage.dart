import 'package:dabaPermis/AuthenticationPages/seConnecter.dart';
import 'package:dabaPermis/AuthenticationPages/sinscrire.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:page_transition/page_transition.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Color.fromRGBO(51, 139, 226, 1),
      body: Center(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Center(
                child: Image.asset(
                  'images/Logo_white.png',
                  height: 90.h,
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 30.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/auth.png',
                      height: 220.h,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.w),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Welcome to our plateform',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Lato',
                            fontWeight: FontWeight.w800,
                            fontSize: 21.sp,
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: Text(
                            'Lorem ipsum dolor sit amet, purus consectetur adipiscing elit ut aliquam, purus',
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w200,
                              fontSize: 17.sp,
                              height: 1.5,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          duration: Duration(milliseconds: 500),
                          type: PageTransitionType.bottomToTop,
                          child: SeConn()));
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  width: 335,
                  height: 55,
                  child: Text(
                    'Se connecter',
                    style: TextStyle(
                      color: Color.fromRGBO(51, 139, 226, 1),
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w700,
                      fontSize: 17.sp,
                      height: 1.5,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          duration: Duration(milliseconds: 500),
                          type: PageTransitionType.bottomToTop,
                          child: Sinscrire()));
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(51, 139, 226, 1),
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Colors.white,
                    ),
                  ),
                  width: 335,
                  height: 55,
                  child: Text(
                    'Créer un compte',
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
                height: 15.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
