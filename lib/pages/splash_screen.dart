import 'dart:math' as math;

import 'package:application_sizie/pages/login_page.dart';
import 'package:application_sizie/shered/theme.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = AppSize.width(context);
    double height = AppSize.height(context);

    return Scaffold(
      backgroundColor: AppColor.background,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'assets/images/pattern_study.png',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
            filterQuality: FilterQuality.high,
            opacity: const AlwaysStoppedAnimation(0.1),
          ),

          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                alignment: Alignment.topLeft,
                children: [
                  ClipPath(
                    clipper: SegitigaAtasClipper(),
                    child: Container(
                      width: width,
                      height: width * 0.44,
                      color: AppColor.primary,
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: AppColor.background,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(width * 0.04),
                          ),
                        ),
                        width: width * 0.18,
                        height: width * 0.18,
                        child: Icon(
                          Icons.school_rounded,
                          color: AppColor.secondary,
                          size: width * 0.12,
                        ),
                      ),
                      Gap(width * 0.1),
                      Transform.rotate(
                        angle: 335.5 * math.pi / 180,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: AppColor.primary,
                                borderRadius: BorderRadius.circular(
                                  width * 0.2,
                                ),
                              ),
                              height: width * 0.06,
                              width: width * 0.4,
                            ),

                            Gap(width * 0.1),
                            Container(
                              decoration: BoxDecoration(
                                color: AppColor.primary,
                                shape: BoxShape.circle,
                              ),
                              height: width * 0.06,
                              width: width * 0.06,
                            ),
                            Gap(width * 0.02),
                            Container(
                              decoration: BoxDecoration(
                                color: AppColor.primary,
                                borderRadius: BorderRadius.circular(
                                  width * 0.2,
                                ),
                              ),
                              height: width * 0.06,
                              width: width * 0.4,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: width * 0.14,
                  height: width * 0.28,
                  decoration: BoxDecoration(
                    color: AppColor.primary,
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(
                        width * 0.14,
                      ), // setengah dari tinggi biar bulat sempurna
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(width * 0.1),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "WELCOME",
                      style: TextStyle(
                        color: AppColor.accent,
                        fontSize: width * 0.08,
                        fontFamily: 'Poppins',
                        height: 1,
                      ),
                    ),
                    Text(
                      "SIZIE",
                      style: TextStyle(
                        color: AppColor.secondary,
                        fontSize: width * 0.2,
                        fontWeight: FontWeight.bold,
                        fontFamily: "PollerOne",
                        height: 1,
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: width * 0.14,
                  height: width * 0.28,
                  decoration: BoxDecoration(
                    color: AppColor.primary,
                    borderRadius: BorderRadius.horizontal(
                      right: Radius.circular(
                        width * 0.14,
                      ), // setengah dari tinggi biar bulat sempurna
                    ),
                  ),
                ),
              ),

              Stack(
                alignment: Alignment.topLeft,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Gap(width * 0.1),
                      Transform.rotate(
                        angle: 155.5 * math.pi / 180,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: AppColor.primary,
                                borderRadius: BorderRadius.circular(
                                  width * 0.2,
                                ),
                              ),
                              height: width * 0.06,
                              width: width * 0.4,
                            ),

                            Gap(width * 0.1),
                            Container(
                              decoration: BoxDecoration(
                                color: AppColor.primary,
                                shape: BoxShape.circle,
                              ),
                              height: width * 0.06,
                              width: width * 0.06,
                            ),
                            Gap(width * 0.02),
                            Container(
                              decoration: BoxDecoration(
                                color: AppColor.primary,
                                borderRadius: BorderRadius.circular(
                                  width * 0.2,
                                ),
                              ),
                              height: width * 0.06,
                              width: width * 0.4,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  ClipPath(
                    clipper: SegitigaBawahClipper(),
                    child: Container(
                      width: width,
                      height: width * 0.44,
                      color: AppColor.primary,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

//
// ===============================
// SEGITIGA BAGIAN ATAS
// ===============================
class SegitigaAtasClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

//
// ===============================
// SEGITIGA BAGIAN BAWAH
// ===============================
class SegitigaBawahClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
