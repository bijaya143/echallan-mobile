import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/feature/auth_user/sign_up/logic/sign_up_cubit.dart';
import 'package:echalan/route/app_route.dart';
import 'package:echalan/widgets/app_button.dart';
import 'package:echalan/widgets/terms_and_services.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterBottomSection extends StatelessWidget {
  const RegisterBottomSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        BlocSelector<SignUpCubit, SignUpState, bool>(
          selector: (state) {
            return state.canSubmit;
          },
          builder: (context, state) {
            return AppButton(
              onPressed: state
                  ? () {
                      Navigator.pushNamed(
                        context,
                        AppRouter.otpScreen,
                        arguments: true,
                      );
                    }
                  : null,
              text: 'Register',
            );
          },
        ),
        24.verticalSpace,
        const TermsAndServicesText(),
        48.verticalSpace,
        RichText(
          text: TextSpan(
            text: 'Already have an account?',
            style: context.titleSmall.copyWith(
              color: ColorConstants.disabledTextColor,
              fontSize: 12.sp,
            ),
            children: <TextSpan>[
              TextSpan(
                text: ' Sign in',
                style: context.titleSmall.copyWith(
                  color: ColorConstants.primaryColor,
                  fontWeight: FontWeight.w500,
                  // decoration: TextDecoration.underline,
                  decorationThickness: 2.h,
                  decorationStyle: TextDecorationStyle.solid,
                  fontSize: 12.sp,
                ),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.pop(context);
                  },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
