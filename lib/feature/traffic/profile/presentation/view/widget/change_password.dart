import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/widgets/app_button.dart';
import 'package:echalan/widgets/app_text_field.dart';

class ChangePasswordWidget extends StatefulWidget {
  const ChangePasswordWidget({super.key});

  @override
  State<ChangePasswordWidget> createState() => _ChangePasswordWidgetState();
}

class _ChangePasswordWidgetState extends State<ChangePasswordWidget> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController newPasswordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final TextEditingController oldPasswordController = TextEditingController();
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
    return GestureDetector(
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
                child: Column(
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
                                    obscureText: true,
                                    controller: oldPasswordController,
                                    labelText: 'Old Password',
                                    hintText: 'Enter your old password',
                                    validator: (value) {
                                      if (value?.isEmpty ?? true) {
                                        return 'Please enter your old password';
                                      }
                                      return null;
                                    },
                                    suffixIcon: GestureDetector(
                                      onTap: () {
                                        oldPasswordController.text = '';
                                      },
                                      child: const Icon(
                                        Icons.visibility_off,
                                        color: ColorConstants.disabledColor,
                                      ),
                                    ),
                                  ),
                                  16.verticalSpace,
                                  AppTextField(
                                    obscureText: true,
                                    controller: newPasswordController,
                                    labelText: 'New Password',
                                    hintText: 'Enter your new password',
                                    validator: (value) {
                                      if (value?.isEmpty ?? true) {
                                        return 'Please enter Traffic Police ID';
                                      }
                                      return null;
                                    },
                                    suffixIcon: GestureDetector(
                                      onTap: () {
                                        newPasswordController.text = '';
                                      },
                                      child: const Icon(
                                        Icons.visibility_off,
                                        color: ColorConstants.disabledColor,
                                      ),
                                    ),
                                  ),
                                  16.verticalSpace,
                                  AppTextField(
                                    controller: confirmPasswordController,
                                    labelText: 'Confirm Password',
                                    hintText: 'Enter your confirm password',
                                    validator: (value) {
                                      return null;
                                    },
                                    suffixIcon: const Icon(
                                      Icons.visibility_off,
                                      color: ColorConstants.disabledColor,
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
                      onPressed: () {},
                      text: 'Update',
                    ),
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
