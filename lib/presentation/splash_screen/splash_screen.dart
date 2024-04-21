import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 115.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgLogoaquadvanta1,
                height: 275.v,
                width: 340.h,
              ),
              SizedBox(height: 27.v),
              Text(
                "For    Quenched    plants",
                style: CustomTextStyles.titleLargeOnPrimary,
              ),
              Spacer(),
              SizedBox(height: 54.v),
              CustomElevatedButton(
                text: "Get started",
                margin: EdgeInsets.symmetric(horizontal: 20.h),
                buttonTextStyle: theme.textTheme.titleMedium!,
              )
            ],
          ),
        ),
      ),
    );
  }
}
