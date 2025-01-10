import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/feature/auth_user/sign_up/logic/sign_up_cubit.dart';
import 'package:echalan/feature/auth_user/sign_up/view/widgets/register_bottom_section.dart';
import 'package:echalan/feature/auth_user/sign_up/view/widgets/register_form.dart';
import 'package:echalan/feature/auth_user/sign_up/view/widgets/register_top_section.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterBaseView extends StatefulWidget {
  const RegisterBaseView({
    super.key,
  });

  @override
  State<RegisterBaseView> createState() => _RegisterBaseViewState();
}

class _RegisterBaseViewState extends State<RegisterBaseView> {
  late SignUpCubit signUpCubit;

  @override
  void initState() {
    signUpCubit = context.read<SignUpCubit>();
    super.initState();
  }

  @override
  void dispose() {
    signUpCubit.clearTextControllers();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: 16.w,
              right: 16.w,
              bottom: 50.h,
            ),
            child: SizedBox(
              height: MediaQuery.of(context).size.height - 35.h,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RegisterTopSection(),
                  RegisterForm(),
                  RegisterBottomSection(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
