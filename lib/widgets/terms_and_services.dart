import 'package:echalan/core/imports/ui_imports.dart';
import 'package:flutter/gestures.dart';

class TermsAndServicesText extends StatelessWidget {
  const TermsAndServicesText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: RichText(
        text: TextSpan(
          text: 'By register, I agree to ',
          style: context.titleSmall.copyWith(
            color: ColorConstants.disabledTextColor,
            fontSize: 12.sp,
          ),
          children: <TextSpan>[
            TextSpan(
              text: 'terms of use',
              style: context.titleSmall.copyWith(
                color: ColorConstants.textColor,
                fontWeight: FontWeight.w500,
                decoration: TextDecoration.underline,
                decorationThickness: 2.h,
                decorationStyle: TextDecorationStyle.solid,
                fontSize: 12.sp,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  // Navigator.of(context).pushNamed(
                  //   AppRoutes.signup,
                  // );
                },
            ),
            TextSpan(
              text: ' and ',
              style: context.titleSmall.copyWith(
                color: ColorConstants.disabledTextColor,
                fontWeight: FontWeight.w400,
                fontSize: 12.sp,
              ),
            ),
            TextSpan(
              text: 'privacy policy',
              style: context.titleSmall.copyWith(
                color: ColorConstants.textColor,
                fontWeight: FontWeight.w500,
                fontSize: 12.sp,
                decoration: TextDecoration.underline,
                decorationThickness: 2.h,
                decorationStyle: TextDecorationStyle.solid,
                height: 1.5.h,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  // Navigator.of(context).pushNamed(
                  //   AppRoutes.signup,
                  // );
                },
            ),
          ],
        ),
      ),
    );
  }
}
