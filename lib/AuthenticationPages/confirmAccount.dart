import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:page_transition/page_transition.dart';

Color phoneColor = Colors.grey[400];

class ConfirmAccount extends StatefulWidget {
  const ConfirmAccount({Key key}) : super(key: key);

  @override
  _Myapp3State createState() => _Myapp3State();
}

class _Myapp3State extends State<ConfirmAccount> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                padding: EdgeInsets.only(top: 10.h, bottom: 30.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: 10.h, left: 40.w, right: 40.w, bottom: 30.h),
                      child: Image.asset(
                        'images/confirmation.png',
                        height: 220.h,
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'Verification code send to your email',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(51, 139, 226, 1),
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w600,
                  fontSize: 18.sp,
                  height: 1.5,
                ),
              ),
              SizedBox(
                height: 16.h,
              ),
              Text(
                'User.test2022@mail.com',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w600,
                  fontSize: 18.sp,
                  height: 1.5,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 42.h, left: 20.w, right: 20.w),
                child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      prefixIcon: Padding(
                        padding: EdgeInsets.only(left: 14, right: 24),
                        child: Icon(
                          FeatherIcons.messageSquare,
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
                      hintText: 'Code'),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 30.h, bottom: 20.h, left: 20.w, right: 20.w),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Don’t recieve the code? ',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w700,
                          fontSize: 15.sp,
                          height: 1.5,
                        ),
                      ),
                      TextSpan(
                        text: ' re-send ',
                        style: TextStyle(
                          color: Color.fromRGBO(51, 139, 226, 1),
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w700,
                          fontSize: 15.sp,
                          height: 1.5,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                    top: 10.h, left: 20.w, right: 20.w, bottom: 25.h),
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(51, 139, 226, 1),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  height: 55,
                  width: 335.w,
                  child: Text(
                    'Verify',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w700,
                      fontSize: 18.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
