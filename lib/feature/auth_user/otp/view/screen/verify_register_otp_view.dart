import 'package:echalan/core/extensions/pop_extension.dart';
import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/route/app_route.dart';
import 'package:echalan/widgets/app_button.dart';
import 'package:flutter/services.dart';

class VerifyRegisterOtpView extends StatefulWidget {
  const VerifyRegisterOtpView({
    super.key,
    this.isFromRegisterScreen = false,
  });

  final bool isFromRegisterScreen;
  @override
  State<VerifyRegisterOtpView> createState() => _VerifyRegisterOtpViewState();
}

class _VerifyRegisterOtpViewState extends State<VerifyRegisterOtpView> {
  final OtpForm _otpForm = OtpForm();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked: (value) {
        if (value) {}
      },
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              32.verticalSpace,
                              _buildTitle(),
                              8.verticalSpace,
                              _buildSubtitle(),
                              36.verticalSpace,
                              _otpForm,
                              32.verticalSpace,
                              _buildVerifyButton(context),
                              24.verticalSpace,
                              _buildResendCodeText(),
                            ],
                          ),
                        ),
                      ),
                      // Padding(
                      //   padding: EdgeInsets.only(bottom: 24.h),
                      //   child:
                      // ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTitle() {
    return Text(
      'Please enter OTP',
      style: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.w700,
        color: ColorConstants.textColor,
      ),
    );
  }

  Widget _buildSubtitle() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 18.w,
      ),
      child: Text(
        'We\'ve message a 6-digit confirmation code. Please enter the code in below box to verify your account.',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: ColorConstants.disabledTextColor,
        ),
      ),
    );
  }

  String _formatPhoneNumber(String phoneNumber) {
    if (phoneNumber.length < 10) return phoneNumber; // Handle short numbers
    return '${phoneNumber.substring(0, 5)} ****${phoneNumber.substring(phoneNumber.length - 2)}';
  }

  Widget _buildResendCodeText() {
    return RichText(
      text: TextSpan(
        text: "Didn't have code? ",
        style: TextStyle(
          fontSize: 14.sp,
          fontWeight: FontWeight.w400,
          color: ColorConstants.disabledTextColor,
        ),
        children: [
          TextSpan(
            text: 'Resend code',
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w600,
              color: ColorConstants.primaryColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildVerifyButton(BuildContext context) {
    return AppButton(
      onPressed: () async {
        if (widget.isFromRegisterScreen) {
          context.popTimes(2);
        } else {
          await Navigator.pushNamed(
            context,
            AppRouter.authUserDashboardScreen,
          );
        }
      },
      text: 'Submit',
    );
  }
}

class OtpForm extends StatelessWidget {
  OtpForm({super.key});

  final List<TextEditingController> controllers = List.generate(
    6,
    (index) => TextEditingController(),
  );

  // Add focus nodes
  final List<FocusNode> _focusNodes = List.generate(
    6,
    (index) => FocusNode(),
  );

  String getOtpValue() {
    return controllers.map((c) => c.text).join();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children:
            List.generate(6, (index) => _buildOtpTextField(context, index)),
      ),
    );
  }

  Widget _buildOtpTextField(BuildContext context, int index) {
    return Container(
      width: 38.w,
      height: 54.h,
      decoration: ShapeDecoration(
        color: ColorConstants.backgroundColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1.w,
            strokeAlign: BorderSide.strokeAlignCenter,
            color: ColorConstants.disableTextFieldOutlineColor,
          ),
          borderRadius: BorderRadius.circular(8.r),
        ),
      ),
      child: Center(
        child: TextFormField(
          controller: controllers[index],
          focusNode: _focusNodes[index],
          keyboardType: TextInputType.number,
          onChanged: (pin) {
            if (pin.length == 1 && index < 5) {
              _focusNodes[index + 1].requestFocus();
            } else if (pin.isEmpty && index > 0) {
              _focusNodes[index - 1].requestFocus();
            } else {
              _focusNodes[index].unfocus();
            }

            // final otp = getOtpValue();
            // context.read<ForgetPasswordCubit>().updateOtpCompletion(otp);
          },
          onTapOutside: (_) => FocusScope.of(context).unfocus(),
          onTap: () {
            controllers[index].selection = TextSelection.fromPosition(
              TextPosition(offset: controllers[index].text.length),
            );
          },
          textInputAction:
              index == 5 ? TextInputAction.done : TextInputAction.next,
          inputFormatters: [
            LengthLimitingTextInputFormatter(1),
            FilteringTextInputFormatter.digitsOnly,
          ],
          style: Theme.of(context).textTheme.titleLarge,
          textAlign: TextAlign.center,
          decoration: const InputDecoration(
            hintStyle: TextStyle(color: Color(0xFF757575)),
            // Minimize decoration to reduce rebuild
            border: InputBorder.none,
            contentPadding: EdgeInsets.zero,
          ),
        ),
      ),
    );
  }
}
