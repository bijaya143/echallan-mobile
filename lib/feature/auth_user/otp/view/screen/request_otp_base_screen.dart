import 'package:echalan/core/formz/phone_number_formz.dart';
import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/feature/auth_user/otp/logic/otp_cubit.dart';
import 'package:echalan/route/app_route.dart';
import 'package:echalan/widgets/app_button.dart';
import 'package:echalan/widgets/app_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RequestOtpBaseScreen extends StatefulWidget {
  const RequestOtpBaseScreen({super.key});

  @override
  State<RequestOtpBaseScreen> createState() => _RequestOtpBaseScreenState();
}

class _RequestOtpBaseScreenState extends State<RequestOtpBaseScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OtpCubit(),
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          body: SafeArea(
            child: BlocBuilder<OtpCubit, OtpState>(
              builder: (context, state) {
                return Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 32.w,
                    vertical: 24.h,
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: 55.h,
                              ),
                              child: Align(
                                child: Text(
                                  'Request OTP',
                                  style: TextStyle(
                                    fontSize: 20.sp,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                            150.verticalSpace,
                            AppTextField(
                              controller:
                                  context.read<OtpCubit>().phoneController,
                              labelText: 'Phone Number',
                              hintText: 'Enter your phone number',
                              onChanged: (value) {
                                context
                                    .read<OtpCubit>()
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
                          ],
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            AppButton(
                              text: 'Request OTP',
                              onPressed: state.canSubmit
                                  ? () {
                                      Navigator.pushNamed(
                                        context,
                                        AppRouter.otpScreen,
                                        arguments: false,
                                      );
                                    }
                                  : null,
                            ),
                            24.verticalSpace,
                            Align(
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.arrow_back_ios,
                                    size: 12.w,
                                    weight: 12.w,
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      context
                                          .read<OtpCubit>()
                                          .clearTextControllers();
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      'Return to sign in',
                                      style: context.bodyLarge.copyWith(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
