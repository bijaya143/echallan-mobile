import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/route/app_route.dart';
import 'package:echalan/widgets/app_button.dart';
import 'package:echalan/widgets/app_text_field.dart';

class TrafficLoginBaseView extends StatefulWidget {
  const TrafficLoginBaseView({super.key});

  @override
  State<TrafficLoginBaseView> createState() => _TrafficLoginBaseViewState();
}

class _TrafficLoginBaseViewState extends State<TrafficLoginBaseView> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.w,
                right: 16.w,
                bottom: 50.h,
              ),
              child: SizedBox(
                height: MediaQuery.of(context).size.height - 75.h,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
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
                          'Log in to your account',
                          style: context.bodyLarge.copyWith(
                            color: ColorConstants.primaryColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            height: 24.sp / 14.sp,
                          ),
                        ),
                        59.verticalSpace,
                        AppTextField(
                          labelText: 'Traffic Police ID',
                          keyBoardType: TextInputType.number,
                          labelTextStyle: context.bodyLarge.copyWith(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            height: 24.sp / 14.sp,
                          ),
                        ),
                        24.verticalSpace,
                        AppTextField(
                          obscureText: true,
                          labelText: 'Password',
                          hintText: '6+ characters',
                          labelTextStyle: context.bodyLarge.copyWith(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w600,
                            height: 24.sp / 14.sp,
                          ),
                          suffixIcon: const Icon(
                            Icons.visibility_off,
                            color: ColorConstants.primaryColor,
                          ),
                        ),
                        16.verticalSpace,
                        Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                context,
                                AppRouter.forgetPasswordScreen,
                              );
                            },
                            child: Text(
                              'Forget Password ?',
                              style: context.bodyLarge.copyWith(
                                fontSize: 14.sp,
                                color: ColorConstants.disabledColor,
                                fontWeight: FontWeight.w400,
                                height: 24.sp / 14.sp,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    AppButton(
                      text: 'Log in',
                      onPressed: () {
                        Navigator.pushReplacementNamed(
                          context,
                          AppRouter.trafficDashboardScreen,
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
