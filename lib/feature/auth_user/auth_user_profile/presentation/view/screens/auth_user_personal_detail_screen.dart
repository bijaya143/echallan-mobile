import 'package:flutter/material.dart';
import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/widgets/app_button.dart';
import 'package:echalan/widgets/app_text_field.dart';
import 'package:echalan/feature/auth_user/auth_user_profile/data/dummy/auth_user_profile_dummy_data.dart';

class AuthUserPersonalDetailScreen extends StatefulWidget {
  const AuthUserPersonalDetailScreen({super.key});

  @override
  State<AuthUserPersonalDetailScreen> createState() =>
      _AuthUserPersonalDetailScreenState();
}

class _AuthUserPersonalDetailScreenState
    extends State<AuthUserPersonalDetailScreen> {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController zipController = TextEditingController();
  final TextEditingController aboutController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    fullNameController.text = authUserProfileModel.fullName;
    phoneController.text = authUserProfileModel.phoneNumber;
    emailController.text = authUserProfileModel.email;
    addressController.text = authUserProfileModel.address;
    stateController.text = authUserProfileModel.stateRegion;
    cityController.text = authUserProfileModel.city;
    zipController.text = authUserProfileModel.zipCode;
    aboutController.text = authUserProfileModel.about;
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
          title: Text(
            'Personal Details',
            style: TextStyle(
              fontSize: 24.sp,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    24.verticalSpace,
                    AppTextField(
                      controller: fullNameController,
                      labelText: 'Full Name',
                      hintText: 'Enter your full name',
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return 'Please enter your full name';
                        }
                        return null;
                      },
                    ),
                    24.verticalSpace,
                    AppTextField(
                      controller: phoneController,
                      labelText: 'Phone Number',
                      hintText: 'Enter your phone number',
                      keyBoardType: TextInputType.number,
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return 'Please enter your phone number';
                        }
                        return null;
                      },
                    ),
                    24.verticalSpace,
                    AppTextField(
                      controller: emailController,
                      labelText: 'Email',
                      hintText: 'Enter your email',
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                    ),
                    24.verticalSpace,
                    AppTextField(
                      controller: addressController,
                      labelText: 'Address',
                      hintText: 'Enter your address',
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return 'Please enter your address';
                        }
                        return null;
                      },
                    ),
                    24.verticalSpace,
                    AppTextField(
                      controller: stateController,
                      labelText: 'State/Region',
                      hintText: 'Enter your state/region',
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return 'Please enter your state/region';
                        }
                        return null;
                      },
                    ),
                    24.verticalSpace,
                    AppTextField(
                      controller: cityController,
                      labelText: 'City',
                      hintText: 'Enter your city',
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return 'Please enter your city';
                        }
                        return null;
                      },
                    ),
                    24.verticalSpace,
                    AppTextField(
                      controller: zipController,
                      labelText: 'ZIP Code',
                      hintText: 'Enter your ZIP code',
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return 'Please enter your ZIP code';
                        }
                        return null;
                      },
                    ),
                    24.verticalSpace,
                    AppTextField(
                      controller: aboutController,
                      labelText: 'About',
                      hintText: 'Tell us about yourself',
                      maxLines: 5,
                      height: 140.h,
                      textInputAction: TextInputAction.newline,
                      validator: (value) {
                        if (value?.isEmpty ?? true) {
                          return 'Please tell us about yourself';
                        }
                        return null;
                      },
                    ),
                    40.verticalSpace,
                    AppButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // Handle form submission
                        }
                      },
                      text: 'Update',
                    ),
                    24.verticalSpace,
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    fullNameController.dispose();
    phoneController.dispose();
    emailController.dispose();
    addressController.dispose();
    stateController.dispose();
    cityController.dispose();
    zipController.dispose();
    aboutController.dispose();
    super.dispose();
  }
}
