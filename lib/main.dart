import 'package:dabaPermis/OnBoardingPages/onBoardingPageOne.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () => MaterialApp(
        title: 'Daba Permis',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage(title: 'Home'),
      ),
      designSize: Size(375, 812),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // make app not rotatable
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Color.fromRGBO(51, 139, 226, 1),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 31.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // inkwell temporary to navigate between pages
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              type: PageTransitionType.rightToLeft,
                              duration: Duration(milliseconds: 500),
                              child: Page1()));
                    },
                    child: Image.asset(
                      'images/Logo_white.png',
                      height: 200.h,
                      width: 300.w,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // wraped inside Flexible to provide an auto-Break when the text reaches the side of the screen
                // can be changed if we want to specify exactely the break position
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.w, right: 8.w),
                    child: Text(
                      'Lorem ipsum dolor sit amet, purus consectetur adipiscing  elit ut aliquam, purus',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.w600,
                        fontSize: 17.sp,
                        height: 1.5,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
