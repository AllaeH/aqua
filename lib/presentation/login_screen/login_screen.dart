import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 29.h),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgLogoaquadvanta1,
                height: 210.v,
                width: 300.h,
              ),
              SizedBox(height: 50.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Welcome!",
                  style: theme.textTheme.displayMedium,
                ),
              ),
              SizedBox(height: 75.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Email",
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 40.v),
              Divider(),
              SizedBox(height: 28.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Password",
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 40.v),
              Divider(),
              SizedBox(height: 43.v),
              CustomElevatedButton(
                text: "Login ",
                buttonTextStyle: theme.textTheme.titleMedium!,
              ),
              SizedBox(height: 11.v),
              CustomOutlinedButton(
                text: "Sign up",
                buttonTextStyle: CustomTextStyles.titleMediumPrimary,
                onPressed: () {
                  onTapSignup(context);
                },
              ),
              SizedBox(height: 53.v),
              Text(
                "Forgot password?",
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 9.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapSignup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
