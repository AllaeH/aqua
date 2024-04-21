import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 43.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSignupStack(context),
              SizedBox(height: 44.v),
              Padding(
                padding: EdgeInsets.only(left: 31.h),
                child: Text(
                  "Full name",
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 40.v),
              Align(
                alignment: Alignment.center,
                child: Divider(
                  indent: 31.h,
                  endIndent: 30.h,
                ),
              ),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(left: 31.h),
                child: Text(
                  "email",
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 40.v),
              Align(
                alignment: Alignment.center,
                child: Divider(
                  indent: 31.h,
                  endIndent: 30.h,
                ),
              ),
              SizedBox(height: 11.v),
              Padding(
                padding: EdgeInsets.only(left: 31.h),
                child: Text(
                  "Password ",
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 40.v),
              Align(
                alignment: Alignment.center,
                child: Divider(
                  indent: 31.h,
                  endIndent: 30.h,
                ),
              ),
              SizedBox(height: 30.v),
              Padding(
                padding: EdgeInsets.only(left: 31.h),
                child: Text(
                  "Verify password",
                  style: theme.textTheme.titleLarge,
                ),
              ),
              SizedBox(height: 38.v),
              Align(
                alignment: Alignment.center,
                child: Divider(
                  indent: 31.h,
                  endIndent: 30.h,
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: _buildSignUpButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildSignupStack(BuildContext context) {
    return SizedBox(
      height: 222.v,
      width: 312.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgLogoHorizon1,
            height: 181.v,
            width: 312.h,
            alignment: Alignment.topCenter,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 28.h),
              child: Text(
                "Register :",
                style: theme.textTheme.displayMedium,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSignUpButton(BuildContext context) {
    return CustomElevatedButton(
      text: "sign up",
      margin: EdgeInsets.only(
        left: 28.h,
        right: 32.h,
        bottom: 55.v,
      ),
      buttonTextStyle: theme.textTheme.titleMedium!,
    );
  }
}
