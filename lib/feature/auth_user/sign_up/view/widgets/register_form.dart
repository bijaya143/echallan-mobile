import 'package:echalan/core/formz/formz_export.dart';

import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/feature/auth_user/sign_up/logic/sign_up_cubit.dart';
import 'package:echalan/widgets/app_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return BlocBuilder<SignUpCubit, SignUpState>(
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppTextField(
              controller: context.read<SignUpCubit>().fullNameTextController,
              labelText: 'Full Name',
              hintText: 'Enter your full name',
              onChanged: (value) {
                context.read<SignUpCubit>().onFullNameChanged(value);
              },
              errorText: !state.fullName.isPure && state.fullName.isNotValid
                  ? state.fullName.error?.explain
                  : null,
              // keyBoardType: TextInputType.phone,
              labelTextStyle: context.bodyLarge.copyWith(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                height: 24.sp / 14.sp,
              ),
            ),
            24.verticalSpace,
            AppTextField(
              controller: context.read<SignUpCubit>().phoneNumberTextController,
              labelText: 'Phone Number',
              hintText: 'Enter your phone number',
              onChanged: (value) {
                context.read<SignUpCubit>().onPhoneNumberChanged(value);
              },
              errorText:
                  !state.phoneNumber.isPure && state.phoneNumber.isNotValid
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
              controller: context.read<SignUpCubit>().passwordTextController,
              obscureText: !state.isPasswordVisible,
              onChanged: (value) {
                context.read<SignUpCubit>().onPasswordChanged(value);
              },
              errorText: !state.password.isPure && state.password.isNotValid
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
                  context.read<SignUpCubit>().togglePassword();
                },
                icon: Icon(
                  state.isPasswordVisible
                      ? Icons.visibility
                      : Icons.visibility_off,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
