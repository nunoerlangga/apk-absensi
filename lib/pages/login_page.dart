import 'package:application_sizie/shered/theme.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _passwordController = TextEditingController();
  bool _obscure = true;
  void _obscurePassword() {
    setState(() {
      _obscure = !_obscure;
    });
  }

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = AppSize.width(context);
    double height = AppSize.height(context);
    return Scaffold(
      backgroundColor: AppColor.primary,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: width * 0.5,
            height: width * 0.5,
            decoration: BoxDecoration(
              color: AppColor.background,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(width * 0.06),
                bottomRight: Radius.circular(width * 0.06),
              ),
            ),
            child: Icon(
              Icons.school_rounded,
              size: width * 0.3,
              color: AppColor.secondary,
            ),
          ),
          Container(
            width: width * 1,
            height: width * 1.4,
            decoration: BoxDecoration(
              color: AppColor.background,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(width * 0.1),
                topRight: Radius.circular(width * 0.1),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(width * 0.1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "LOGIN",
                    style: TextStyle(
                      color: AppColor.secondary,
                      fontSize: width * 0.08,
                      fontFamily: 'Poppins',
                      height: 1,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "NOMOR INDUK SISWA",
                          style: TextStyle(
                            color: AppColor.secondary,
                            fontSize: width * 0.04,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      TextField(
                        style: TextStyle(
                          color: AppColor.secondary,
                          fontSize: width * 0.04,
                          fontFamily: 'Poppins',
                        ),
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColor.secondary,
                              width: width * 0.005,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "PASSWORD",
                          style: TextStyle(
                            color: AppColor.secondary,
                            fontSize: width * 0.04,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ),
                      TextField(
                        style: TextStyle(
                          color: AppColor.secondary,
                          fontSize: width * 0.04,
                          fontFamily: 'Poppins',
                        ),
                        obscureText: _obscure,
                        controller: _passwordController,
                        decoration: InputDecoration(
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColor.secondary,
                              width: width * 0.005,
                            ),
                          ),
                          suffixIcon: IconButton(
                            onPressed: _obscurePassword,
                            icon: Icon(
                              _obscure
                                  ? Icons.remove_red_eye_outlined
                                  : Icons.remove_red_eye_rounded,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: width,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: AppColor.accent, // warna latar tombol
                        foregroundColor: AppColor.background, // warna teks/icon
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(width * 0.04),
                        ),
                      ),
                      onPressed: () {
                        // aksi ketika ditekan
                      },
                      child: Text(
                        "MASUK",
                        style: TextStyle(
                          color: AppColor.background,
                          fontSize: width * 0.04,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
