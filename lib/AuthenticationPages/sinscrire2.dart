import 'package:dabaPermis/AuthenticationPages/sinscrire3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:page_transition/page_transition.dart';

Color phoneColor = Colors.grey[400];

class Sinscrire2 extends StatefulWidget {
  const Sinscrire2({Key key}) : super(key: key);

  @override
  _Myapp3State createState() => _Myapp3State();
}

bool cnt1_clicked = false;
bool cnt2_clicked = false;
bool cnt3_clicked = false;

class _Myapp3State extends State<Sinscrire2> {
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
              padding: EdgeInsets.only(top: 28.h, bottom: 30.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 5.w),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(51, 139, 226, 1),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      height: 35,
                      width: 35,
                      alignment: Alignment.center,
                      child: Icon(
                        FeatherIcons.check,
                        size: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(51, 139, 226, 1),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    height: 5,
                    width: 100.w,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.w, right: 5.w),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(51, 139, 226, 1),
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      height: 35,
                      width: 35,
                      alignment: Alignment.center,
                      child: Text(
                        '2',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w800,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(51, 139, 226, 1),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    height: 5,
                    width: 100.w,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 5.w),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey[500],
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      height: 35,
                      width: 35,
                      alignment: Alignment.center,
                      child: Text(
                        '3',
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w800,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 2.h),
              child: Text(
                'Veuillez compléter votre profil pour une meilleure expérience',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(51, 139, 226, 1),
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w800,
                  fontSize: 18.sp,
                  height: 1.5,
                ),
              ),
            ),
            SizedBox(
              height: 40.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 20.h),
              child: Text(
                'Vous utiliserez notre application comme :',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey[700],
                  fontFamily: 'Lato',
                  fontWeight: FontWeight.w800,
                  fontSize: 18.sp,
                  height: 1.5,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25.h, left: 20.w, right: 20.w),
              child: InkWell(
                onTap: () {
                  setState(() {
                    cnt1_clicked = true;
                    cnt2_clicked = false;
                    cnt3_clicked = false;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: cnt1_clicked
                        ? Color.fromRGBO(51, 139, 226, 1)
                        : Colors.white,
                    border: cnt1_clicked
                        ? null
                        : Border.all(
                            color: Color.fromRGBO(51, 139, 226, 1),
                            width: 2,
                          ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  height: 55,
                  width: 335.w,
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.w),
                          child: Text(
                            'Auto-école',
                            style: TextStyle(
                              color: cnt1_clicked
                                  ? Colors.white
                                  : Color.fromRGBO(51, 139, 226, 1),
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w500,
                              fontSize: 17.sp,
                            ),
                          ),
                        ),
                      ),
                      Visibility(
                        visible: cnt1_clicked ? true : false,
                        child: Padding(
                          padding: EdgeInsets.only(right: 25),
                          child: Icon(
                            FeatherIcons.check,
                            size: 27,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25.h, left: 20.w, right: 20.w),
              child: InkWell(
                onTap: () {
                  setState(() {
                    cnt1_clicked = false;
                    cnt2_clicked = true;
                    cnt3_clicked = false;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: cnt2_clicked
                        ? Color.fromRGBO(51, 139, 226, 1)
                        : Colors.white,
                    border: cnt2_clicked
                        ? null
                        : Border.all(
                            color: Color.fromRGBO(51, 139, 226, 1),
                            width: 2,
                          ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  height: 55,
                  width: 335.w,
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.w),
                          child: Text(
                            'Candidat Libre',
                            style: TextStyle(
                              color: cnt2_clicked
                                  ? Colors.white
                                  : Color.fromRGBO(51, 139, 226, 1),
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w500,
                              fontSize: 17.sp,
                            ),
                          ),
                        ),
                      ),
                      Visibility(
                        visible: cnt2_clicked ? true : false,
                        child: Padding(
                          padding: EdgeInsets.only(right: 25),
                          child: Icon(
                            FeatherIcons.check,
                            size: 27,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25.h, left: 20.w, right: 20.w),
              child: InkWell(
                onTap: () {
                  setState(() {
                    cnt1_clicked = false;
                    cnt2_clicked = false;
                    cnt3_clicked = true;
                  });
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: cnt3_clicked
                        ? Color.fromRGBO(51, 139, 226, 1)
                        : Colors.white,
                    border: cnt3_clicked
                        ? null
                        : Border.all(
                            color: Color.fromRGBO(51, 139, 226, 1),
                            width: 2,
                          ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  height: 55,
                  width: 335.w,
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.only(left: 20.w),
                          child: Text(
                            'Moniteur Libre',
                            style: TextStyle(
                              color: cnt3_clicked
                                  ? Colors.white
                                  : Color.fromRGBO(51, 139, 226, 1),
                              fontFamily: 'Lato',
                              fontWeight: FontWeight.w500,
                              fontSize: 17.sp,
                            ),
                          ),
                        ),
                      ),
                      Visibility(
                        visible: cnt3_clicked ? true : false,
                        child: Padding(
                          padding: EdgeInsets.only(right: 25),
                          child: Icon(
                            FeatherIcons.check,
                            size: 27,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 35.h, left: 20.w, right: 20.w, bottom: 25.h),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade,
                          duration: Duration(milliseconds: 500),
                          child: Sinscrire3()));
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(51, 139, 226, 1),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  height: 55,
                  width: 335.w,
                  child: Text(
                    'Suivant',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Lato',
                      fontWeight: FontWeight.w700,
                      fontSize: 18.sp,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
