import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:dabaPermis/OnBoardingPages/onBoardingPageTwo.dart';
import 'package:page_transition/page_transition.dart';

class Page1 extends StatelessWidget {
  const Page1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Color.fromRGBO(51, 139, 226, 1),
        body: Column(
          children: [
            Container(
              color: Colors.white,
              height: 500.h,
              width: 375.w,
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        top: 42.h, bottom: 34.h, left: 125.w, right: 125.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Image.asset(
                            'images/Logo_color.png',
                            width: 150.w,
                            height: 95.h,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 40.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Image.asset(
                            'images/woman_car.png',
                            width: 567.w,
                            height: 288.h,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 23.h,
            ),
            Flexible(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 111.w),
                child: Text(
                  'Lorem ipsum dolor ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w800,
                    fontSize: 20.sp,
                    height: 1.5,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Flexible(
                child: Text(
                  'Lorem ipsum dolor sit amet, purus consectetur adipiscing elit ut aliquam, purus',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w800,
                    fontSize: 14.sp,
                    height: 1.5,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            // Working on white Lines navigation
            Padding(
              padding: EdgeInsets.symmetric(vertical: 15.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 12.w, right: 12.w),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      width: 50,
                      height: 7,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 12.w),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      width: 20,
                      height: 7,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 12.w),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      width: 20,
                      height: 7,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 15.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: 15.h, right: 155.w, left: 155.w, bottom: 15.h),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      PageTransition(
                          type: PageTransitionType.fade,
                          duration: Duration(milliseconds: 300),
                          child: Page2()));
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  width: 55,
                  height: 55,
                  child: Icon(
                    FeatherIcons.arrowRight,
                    size: 30,
                    color: Color.fromRGBO(51, 139, 226, 1),
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
