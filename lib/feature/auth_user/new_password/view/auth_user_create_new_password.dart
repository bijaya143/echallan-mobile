import 'package:echalan/core/extensions/pop_extension.dart';
import 'package:echalan/core/formz/formz_export.dart';

import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/feature/auth_user/new_password/logic/auth_user_change_password_cubit.dart';
import 'package:echalan/widgets/app_button.dart';
import 'package:echalan/widgets/app_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthUserCreateNewPasswordScreen extends StatefulWidget {
  const AuthUserCreateNewPasswordScreen({super.key});

  @override
  State<AuthUserCreateNewPasswordScreen> createState() =>
      _AuthUserCreateNewPasswordScreenState();
}

class _AuthUserCreateNewPasswordScreenState
    extends State<AuthUserCreateNewPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  Widget _buildRequirementItem(String text) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Row(
        children: [
          Container(
            height: 4.h,
            width: 4.h,
            margin: EdgeInsets.only(right: 8.w),
            decoration: const BoxDecoration(
              color: Colors.black,
              shape: BoxShape.circle,
            ),
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 12.sp,
              color: Colors.grey[600],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPasswordRequirementsCard() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Create new password',
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
            height: 22.sp / 20.sp,
          ),
        ),
        12.verticalSpace,
        Text(
          'You can now create a new password for your account.',
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: ColorConstants.disabledColor,
            height: 22.sp / 14.sp,
          ),
          textAlign: TextAlign.center,
        ),
        12.verticalSpace,
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthUserChangePasswordCubit(),
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.w),
              child: BlocBuilder<AuthUserChangePasswordCubit,
                  AuthUserChangePasswordState>(
                builder: (context, state) {
                  return Column(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              40.verticalSpace,
                              _buildPasswordRequirementsCard(),
                              16.verticalSpace,
                              Form(
                                key: _formKey,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        35.verticalSpace,
                                        AppTextField(
                                          obscureText: state.isPasswordVisible,
                                          controller: newPasswordController,
                                          labelText: 'New Password',
                                          hintText: 'Enter your new password',
                                          onChanged: (value) {
                                            context
                                                .read<
                                                    AuthUserChangePasswordCubit>()
                                                .onPasswordChanged(value);
                                          },
                                          errorText: !state.password.isPure &&
                                                  state.password.isNotValid
                                              ? state.password.error?.explain
                                              : null,
                                          suffixIcon: IconButton(
                                            onPressed: () {
                                              context
                                                  .read<
                                                      AuthUserChangePasswordCubit>()
                                                  .togglePassword();
                                            },
                                            icon: Icon(
                                              state.isPasswordVisible
                                                  ? Icons.visibility_off
                                                  : Icons.visibility,
                                            ),
                                          ),
                                        ),
                                        24.verticalSpace,
                                        AppTextField(
                                          controller: confirmPasswordController,
                                          labelText: 'Confirm Password',
                                          hintText:
                                              'Enter your confirm password',
                                          onChanged: (value) {
                                            context
                                                .read<
                                                    AuthUserChangePasswordCubit>()
                                                .onConfirmPasswordChanged(
                                                    value);
                                          },
                                          errorText:
                                              !state.confirmPassword.isPure &&
                                                      state.confirmPassword
                                                          .isNotValid
                                                  ? state.confirmPassword.error
                                                      ?.explain
                                                  : null,
                                          suffixIcon: IconButton(
                                            onPressed: () {
                                              context
                                                  .read<
                                                      AuthUserChangePasswordCubit>()
                                                  .toggleConfirmPassword();
                                            },
                                            icon: Icon(
                                              state.isConfirmPasswordVisible
                                                  ? Icons.visibility_off
                                                  : Icons.visibility,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: 32.h,
                        ),
                        child: AppButton(
                          onPressed: state.canSubmit
                              ? () {
                                  context.popTimes(3);
                                }
                              : null,
                          text: 'Save',
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
