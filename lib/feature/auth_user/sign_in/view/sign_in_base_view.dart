import 'package:echalan/core/formz/formz_export.dart';
import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/feature/auth_user/sign_in/logic/sign_in_cubit.dart';
import 'package:echalan/route/app_route.dart';
import 'package:echalan/widgets/app_button.dart';
import 'package:echalan/widgets/app_text_field.dart';
import 'package:echalan/widgets/terms_and_services.dart';
import 'package:flutter/gestures.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class SignInBaseView extends StatefulWidget {
  const SignInBaseView({super.key});

  @override
  State<SignInBaseView> createState() => _SignInBaseViewState();
}

class _SignInBaseViewState extends State<SignInBaseView> {
  late SignInCubit signInCubit;

  @override
  void initState() {
    signInCubit = context.read<SignInCubit>();
    super.initState();
  }

  @override
  void dispose() {
    signInCubit.clearTextControllers();
    super.dispose();
  }

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
                child: BlocBuilder<SignInCubit, SignInState>(
                  builder: (context, state) {
                    return Column(
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
                              'Sign in to your account',
                              style: context.displayLarge.copyWith(
                                fontSize: 24.sp,
                                fontWeight: FontWeight.w700,
                                height: 32.sp / 24.sp,
                              ),
                            ),
                            8.verticalSpace,
                            RichText(
                              text: TextSpan(
                                text: 'Don\'t have an account? ',
                                style: context.titleSmall.copyWith(
                                  color: ColorConstants.disabledTextColor,
                                  fontSize: 12.sp,
                                ),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: 'Get started',
                                    style: context.titleSmall.copyWith(
                                      color: ColorConstants.textColor,
                                      fontWeight: FontWeight.w500,
                                      // decoration: TextDecoration.underline,
                                      decorationThickness: 2.h,
                                      decorationStyle:
                                          TextDecorationStyle.solid,
                                      fontSize: 12.sp,
                                    ),
                                    recognizer: TapGestureRecognizer()
                                      ..onTap = () {
                                        Navigator.pushNamed(
                                          context,
                                          AppRouter.registerScreen,
                                        );
                                      },
                                  ),
                                ],
                              ),
                            ),
                            45.verticalSpace,
                            AppTextField(
                              controller:
                                  context.read<SignInCubit>().phoneController,
                              labelText: 'Phone Number',
                              hintText: 'Enter your phone number',
                              onChanged: (value) {
                                context
                                    .read<SignInCubit>()
                                    .onPhoneNumberChanged(value);
                              },
                              errorText: !state.phoneNumber.isPure &&
                                      state.phoneNumber.isNotValid
                                  ? state.phoneNumber.error?.explain
                                  : null,
                              keyBoardType: TextInputType.phone,
                              labelTextStyle: context.bodyLarge.copyWith(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                height: 24.sp / 14.sp,
                              ),
                            ),
                            24.verticalSpace,
                            AppTextField(
                              controller: context
                                  .read<SignInCubit>()
                                  .passwordController,
                              obscureText: state.isPasswordVisible,
                              onChanged: (value) {
                                context
                                    .read<SignInCubit>()
                                    .onPasswordChanged(value);
                              },
                              errorText: !state.password.isPure &&
                                      state.password.isNotValid
                                  ? state.password.error?.explain
                                  : null,
                              labelText: 'Password',
                              hintText: '6+ characters',
                              labelTextStyle: context.bodyLarge.copyWith(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                height: 24.sp / 14.sp,
                              ),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  context.read<SignInCubit>().togglePassword();
                                },
                                icon: Icon(
                                  state.isPasswordVisible
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                ),
                              ),
                            ),
                            16.verticalSpace,
                            Align(
                              alignment: Alignment.centerRight,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                    context,
                                    AppRouter.requestOtpScreen,
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
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            AppButton(
                              text: 'Sign in',
                              onPressed: state.canSubmit
                                  ? () {
                                      Navigator.pushReplacementNamed(
                                        context,
                                        AppRouter.authUserDashboardScreen,
                                      );
                                    }
                                  : null,
                            ),
                            24.verticalSpace,
                            const TermsAndServicesText(),
                          ],
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
