import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/core/formz/formz_export.dart';

import 'package:echalan/feature/auth_user/auth_user_profile/presentation/logic/auth_user_profile_cubit.dart';
import 'package:echalan/widgets/app_button.dart';
import 'package:echalan/widgets/app_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthUserChangePasswordScreen extends StatefulWidget {
  const AuthUserChangePasswordScreen({super.key});

  @override
  State<AuthUserChangePasswordScreen> createState() =>
      _AuthUserChangePasswordScreenState();
}

class _AuthUserChangePasswordScreenState
    extends State<AuthUserChangePasswordScreen> {
  final _formKey = GlobalKey<FormState>();

  final List<String> passwordRequirements = [
    'at least 8 characters',
    'at least one number (1, 2, 3, 4, etc)',
    r'at least one symbol (!, @, #, $, %, etc)',
    'at least one uppercase letter (A, B, C, etc)',
    'at least one lowercase letter (a, b, c, etc)',
  ];

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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'In order to protect your account, make sure your password contains:',
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: ColorConstants.disabledColor,
            height: 22.sp / 14.sp,
          ),
        ),
        12.verticalSpace,
        ...passwordRequirements.map(_buildRequirementItem),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthUserProfileCubit(),
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Padding(
              padding: EdgeInsets.only(left: .15.sw),
              child: Text(
                'Change Password',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
          body: SafeArea(
            child: SingleChildScrollView(
              child: SizedBox(
                height: .9.sh,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 32.w,
                    right: 32.w,
                    bottom: 50.h,
                  ),
                  child:
                      BlocBuilder<AuthUserProfileCubit, AuthUserProfileState>(
                    builder: (context, state) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
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
                                        // const FormHeaderSection(
                                        //   title: 'Change Password Form',
                                        //   description:
                                        //       'You can now create a new password for your account.',
                                        // ),
                                        35.verticalSpace,
                                        AppTextField(
                                          obscureText:
                                              state.isOldPasswordObscure,
                                          controller: context
                                              .read<AuthUserProfileCubit>()
                                              .oldPasswordController,
                                          labelText: 'Old Password',
                                          hintText: 'Enter your old password',
                                          onChanged: (value) {
                                            context
                                                .read<AuthUserProfileCubit>()
                                                .onOldPasswordChanged(value);
                                          },
                                          errorText: !state
                                                      .oldPassword.isPure &&
                                                  state.oldPassword.isNotValid
                                              ? state.oldPassword.error?.explain
                                              : null,
                                          suffixIcon: GestureDetector(
                                            onTap: () {
                                              context
                                                  .read<AuthUserProfileCubit>()
                                                  .toggleOldPassword();
                                            },
                                            child: state.isOldPasswordObscure
                                                ? const Icon(
                                                    Icons.visibility_off,
                                                    color: ColorConstants
                                                        .disabledColor,
                                                  )
                                                : const Icon(
                                                    Icons.visibility,
                                                    color: ColorConstants
                                                        .disabledColor,
                                                  ),
                                          ),
                                        ),
                                        16.verticalSpace,
                                        AppTextField(
                                          obscureText:
                                              state.isNewPasswordObscure,
                                          controller: context
                                              .read<AuthUserProfileCubit>()
                                              .newPasswordController,
                                          errorText: !state
                                                      .newPassword.isPure &&
                                                  state.newPassword.isNotValid
                                              ? state.newPassword.error?.explain
                                              : null,
                                          labelText: 'New Password',
                                          hintText: 'Enter your new password',
                                          onChanged: (value) {
                                            context
                                                .read<AuthUserProfileCubit>()
                                                .onNewPasswordChanged(value);
                                          },
                                          suffixIcon: GestureDetector(
                                            onTap: () {
                                              context
                                                  .read<AuthUserProfileCubit>()
                                                  .toggleNewPassword();
                                            },
                                            child: state.isNewPasswordObscure
                                                ? const Icon(
                                                    Icons.visibility_off,
                                                    color: ColorConstants
                                                        .disabledColor,
                                                  )
                                                : const Icon(
                                                    Icons.visibility,
                                                    color: ColorConstants
                                                        .disabledColor,
                                                  ),
                                          ),
                                        ),
                                        16.verticalSpace,
                                        AppTextField(
                                          obscureText:
                                              state.isConfirmPasswordObscure,
                                          controller: context
                                              .read<AuthUserProfileCubit>()
                                              .confirmPasswordController,
                                          labelText: 'Confirm Password',
                                          hintText:
                                              'Enter your confirm password',
                                          errorText:
                                              !state.confirmPassword.isPure &&
                                                      state.confirmPassword
                                                          .isNotValid
                                                  ? state.confirmPassword.error
                                                      ?.explain
                                                  : null,
                                          onChanged: (value) {
                                            context
                                                .read<AuthUserProfileCubit>()
                                                .onConfirmPasswordChanged(
                                                  value,
                                                );
                                          },
                                          suffixIcon: GestureDetector(
                                            onTap: () {
                                              context
                                                  .read<AuthUserProfileCubit>()
                                                  .toggleConfirmPassword();
                                            },
                                            child:
                                                state.isConfirmPasswordObscure
                                                    ? const Icon(
                                                        Icons.visibility_off,
                                                        color: ColorConstants
                                                            .disabledColor,
                                                      )
                                                    : const Icon(
                                                        Icons.visibility,
                                                        color: ColorConstants
                                                            .disabledColor,
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
                          AppButton(
                            onPressed: state.canSubmit ? () {} : null,
                            text: 'Update',
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
      ),
    );
  }
}
