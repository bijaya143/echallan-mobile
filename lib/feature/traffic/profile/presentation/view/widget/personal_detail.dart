import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/feature/traffic/profile/data/dummy_profile_detail/dummy_profile_detail.dart';
import 'package:echalan/widgets/app_button.dart';
import 'package:echalan/widgets/app_drop_down.dart';
import 'package:echalan/widgets/app_text_field.dart';

class PersonalDetailWidget extends StatefulWidget {
  const PersonalDetailWidget({super.key});

  @override
  State<PersonalDetailWidget> createState() => _PersonalDetailWidgetState();
}

class _PersonalDetailWidgetState extends State<PersonalDetailWidget> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController trafficPoliceIdController =
      TextEditingController();
  final TextEditingController positionController = TextEditingController();
  final TextEditingController dobController = TextEditingController();
  final TextEditingController genderController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController stateController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController zipController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    // Initialize controllers with dummy data
    nameController.text = personalDetailModel.name;
    trafficPoliceIdController.text = personalDetailModel.trafficPoliceId;
    positionController.text = personalDetailModel.trafficPosition[0];
    dobController.text = personalDetailModel.dateOfBirth;
    genderController.text = personalDetailModel.gender[0];
    phoneController.text = personalDetailModel.phoneNumber.toString();
    emailController.text = personalDetailModel.email;
    addressController.text = personalDetailModel.address;
    stateController.text = personalDetailModel.stateRegistered;
    cityController.text = personalDetailModel.city;
    zipController.text = personalDetailModel.zipCode;
  }

  String _getMonthName(int month) {
    const months = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sep',
      'Oct',
      'Nov',
      'Dec'
    ];
    return months[month - 1];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    controller: nameController,
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
                    controller: trafficPoliceIdController,
                    labelText: 'Traffic Police ID',
                    hintText: 'Enter your ID',
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return 'Please enter your ID';
                      }
                      return null;
                    },
                  ),
                  24.verticalSpace,
                  AppDropdownField(
                    controller: positionController,
                    labelText: 'Traffic Position',
                    hintText: 'Select Position',
                    options: personalDetailModel.trafficPosition,
                  ),
                  24.verticalSpace,
                  AppTextField(
                    readOnly: true,
                    controller: dobController,
                    labelText: 'Date of Birth',
                    hintText: 'YYYY-MM-DD',
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return 'Please select date of birth';
                      }
                      return null;
                    },
                    onTap: () async {
                      final DateTime? picked = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1950),
                        lastDate: DateTime.now(),
                      );

                      if (picked != null) {
                        dobController.text =
                            "${picked.day} ${_getMonthName(picked.month)}, ${picked.year}";
                      }
                    },
                    suffixIcon: const Icon(
                      Icons.calendar_month,
                      color: ColorConstants.disabledColor,
                    ),
                  ),
                  24.verticalSpace,
                  AppDropdownField(
                    controller: genderController,
                    labelText: 'Gender',
                    hintText: 'Select Gender',
                    options: personalDetailModel.gender,
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
                    labelText: 'State',
                    hintText: 'Enter your state',
                    validator: (value) {
                      if (value?.isEmpty ?? true) {
                        return 'Please enter your state';
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
                  40.verticalSpace,
                  AppButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // Handle form submission
                      }
                    },
                    text: 'Update Profile',
                  ),
                  24.verticalSpace,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    trafficPoliceIdController.dispose();
    positionController.dispose();
    dobController.dispose();
    genderController.dispose();
    phoneController.dispose();
    emailController.dispose();
    addressController.dispose();
    stateController.dispose();
    cityController.dispose();
    zipController.dispose();
    super.dispose();
  }
}
