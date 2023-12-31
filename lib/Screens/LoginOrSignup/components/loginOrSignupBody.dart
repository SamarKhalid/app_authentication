import 'package:authentication_task/Screens/Login/login.dart';
import 'package:authentication_task/Screens/Register/register.dart';
import 'package:authentication_task/components/buttons.dart';
import 'package:authentication_task/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';



class LogInOrSignupBody extends StatelessWidget {
  const LogInOrSignupBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      SizedBox(width: double.infinity.w, height: 65.h),
      Container(
          width: 310.w,
          height: 273.h,
          decoration: const BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                image: AssetImage("assets/images/loginOrSignupImage.png"),
                fit: BoxFit.fill,
              ))),
      SizedBox(
        height: 40.h,
        width: double.infinity.w,
      ),
      DefaultButton(
        text: "Log in",
        onPressed: () {
          Navigator.pushNamed(context, Login.routeName);
        },
      ),
      SizedBox(
        height: 25.h,
        width: double.infinity.w,
      ),
      DefaultButton(
        text: "Register",
        onPressed: () {
          Navigator.pushNamed(context, Register.routeName);
        },
      ),
      SizedBox(
        height: 50.h,
      ),
      Text(
        "Powered by: ABS.Ai",
        style: TextStyle(
          fontSize: commonTextSize.sp,
          color: textBlack,
        ),
      )
    ]);
  }
}
