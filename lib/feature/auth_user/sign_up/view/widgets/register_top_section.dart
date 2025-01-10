import 'package:echalan/core/imports/ui_imports.dart';

class RegisterTopSection extends StatelessWidget {
  const RegisterTopSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 32.h,
          ),
          child: Center(
            child: Image.asset(
              ImageConstants.namaste,
              height: 142.h,
              width: 142.w,
            ),
          ),
        ),
        24.verticalSpace,
        Text(
          'Welcome to eChallan',
          style: context.displayLarge.copyWith(
            fontSize: 24.sp,
            fontWeight: FontWeight.w700,
            height: 32.sp / 24.sp,
          ),
        ),
        8.verticalSpace,
        Text(
          'Create account',
          style: context.titleSmall.copyWith(
            color: ColorConstants.primaryColor,
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
