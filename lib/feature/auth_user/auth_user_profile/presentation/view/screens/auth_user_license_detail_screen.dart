import 'package:flutter/material.dart';
import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/widgets/app_button.dart';
import 'package:echalan/widgets/app_text_field.dart';
import 'package:echalan/feature/auth_user/auth_user_profile/data/dummy/auth_user_license_dummy_data.dart';
import 'package:echalan/widgets/app_drop_down.dart';

class AuthUserLicenseDetailScreen extends StatefulWidget {
  const AuthUserLicenseDetailScreen({super.key});

  @override
  State<AuthUserLicenseDetailScreen> createState() =>
      _AuthUserLicenseDetailScreenState();
}

class _AuthUserLicenseDetailScreenState
    extends State<AuthUserLicenseDetailScreen> {
  final TextEditingController categoryController = TextEditingController();
  final TextEditingController dlNumberController = TextEditingController();
  final TextEditingController bloodGroupController = TextEditingController();
  final TextEditingController issueDateController = TextEditingController();
  final TextEditingController expiryDateController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController parentNameController = TextEditingController();
  final TextEditingController citizenshipController = TextEditingController();
  final TextEditingController passportController = TextEditingController();
  final TextEditingController contactController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  final List<String> bloodGroups = [
    'A+',
    'A-',
    'B+',
    'B-',
    'AB+',
    'AB-',
    'O+',
    'O-'
  ];

  @override
  void initState() {
    super.initState();
    categoryController.text = authUserLicenseModel.category;
    dlNumberController.text = authUserLicenseModel.dlNumber;
    bloodGroupController.text = authUserLicenseModel.bloodGroup;
    issueDateController.text = _formatDate(authUserLicenseModel.issueDate);
    expiryDateController.text = _formatDate(authUserLicenseModel.expiryDate);
    dobController.text = _formatDate(authUserLicenseModel.dateOfBirth);
    parentNameController.text = authUserLicenseModel.fatherOrMotherName;
    citizenshipController.text = authUserLicenseModel.citizenshipNumber;
    passportController.text = authUserLicenseModel.passportNumber;
    contactController.text = authUserLicenseModel.contactNumber;
  }

  String _formatDate(DateTime date) {
    return "${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}";
  }

  Future<void> _selectDate(BuildContext context,
      TextEditingController controller, DateTime initialDate) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: DateTime(1950),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        controller.text = _formatDate(picked);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'License Details',
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
                      controller: categoryController,
                      labelText: 'License Category',
                      hintText: 'Enter license category',
                      validator: (value) => value?.isEmpty ?? true
                          ? 'Please enter license category'
                          : null,
                    ),
                    24.verticalSpace,
                    AppTextField(
                      controller: dlNumberController,
                      labelText: 'DL Number',
                      hintText: 'Enter DL number',
                      validator: (value) => value?.isEmpty ?? true
                          ? 'Please enter DL number'
                          : null,
                    ),
                    24.verticalSpace,
                    AppDropdownField(
                      controller: bloodGroupController,
                      labelText: 'Blood Group',
                      hintText: 'Select Blood Group',
                      options: bloodGroups,
                    ),
                    24.verticalSpace,
                    AppTextField(
                      controller: issueDateController,
                      labelText: 'Issue Date',
                      hintText: 'Select issue date',
                      readOnly: true,
                      suffixIcon: const Icon(
                        Icons.calendar_month_sharp,
                        color: ColorConstants.disabledColor,
                      ),
                      onTap: () => _selectDate(context, issueDateController,
                          authUserLicenseModel.issueDate),
                      validator: (value) => value?.isEmpty ?? true
                          ? 'Please select issue date'
                          : null,
                    ),
                    24.verticalSpace,
                    AppTextField(
                      controller: expiryDateController,
                      labelText: 'Expiry Date',
                      hintText: 'Select expiry date',
                      readOnly: true,
                      suffixIcon: const Icon(
                        Icons.calendar_month_sharp,
                        color: ColorConstants.disabledColor,
                      ),
                      onTap: () => _selectDate(context, expiryDateController,
                          authUserLicenseModel.expiryDate),
                      validator: (value) => value?.isEmpty ?? true
                          ? 'Please select expiry date'
                          : null,
                    ),
                    24.verticalSpace,
                    AppTextField(
                      controller: dobController,
                      labelText: 'Date of Birth',
                      hintText: 'Select date of birth',
                      readOnly: true,
                      suffixIcon: const Icon(
                        Icons.calendar_month_sharp,
                        color: ColorConstants.disabledColor,
                      ),
                      onTap: () => _selectDate(context, dobController,
                          authUserLicenseModel.dateOfBirth),
                      validator: (value) => value?.isEmpty ?? true
                          ? 'Please select date of birth'
                          : null,
                    ),
                    24.verticalSpace,
                    AppTextField(
                      controller: parentNameController,
                      labelText: 'Father/Mother Name',
                      hintText: 'Enter parent name',
                      validator: (value) => value?.isEmpty ?? true
                          ? 'Please enter parent name'
                          : null,
                    ),
                    24.verticalSpace,
                    AppTextField(
                      controller: citizenshipController,
                      labelText: 'Citizenship Number',
                      hintText: 'Enter citizenship number',
                      validator: (value) => value?.isEmpty ?? true
                          ? 'Please enter citizenship number'
                          : null,
                    ),
                    24.verticalSpace,
                    AppTextField(
                      controller: passportController,
                      labelText: 'Passport Number',
                      hintText: 'Enter passport number',
                      validator: (value) => value?.isEmpty ?? true
                          ? 'Please enter passport number'
                          : null,
                    ),
                    24.verticalSpace,
                    AppTextField(
                      controller: contactController,
                      labelText: 'Contact Number',
                      hintText: 'Enter contact number',
                      validator: (value) => value?.isEmpty ?? true
                          ? 'Please enter contact number'
                          : null,
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
    categoryController.dispose();
    dlNumberController.dispose();
    bloodGroupController.dispose();
    issueDateController.dispose();
    expiryDateController.dispose();
    dobController.dispose();
    parentNameController.dispose();
    citizenshipController.dispose();
    passportController.dispose();
    contactController.dispose();
    super.dispose();
  }
}
