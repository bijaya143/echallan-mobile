import 'package:echalan/core/constants/dropdown_constants.dart';
import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/widgets/app_button.dart';
import 'package:echalan/widgets/app_drop_down.dart';
import 'package:echalan/widgets/app_text_field.dart';
import 'package:echalan/widgets/form_header_section.dart';

class ForgetPasswordBaseView extends StatefulWidget {
  const ForgetPasswordBaseView({super.key});

  @override
  State<ForgetPasswordBaseView> createState() => _ForgetPasswordBaseViewState();
}

class _ForgetPasswordBaseViewState extends State<ForgetPasswordBaseView> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController trafficPoliceIdController =
      TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController joinedDateController = TextEditingController();
  final TextEditingController servingDistrictController =
      TextEditingController();

  void _handleSubmit() {
    if (_formKey.currentState?.validate() ?? false) {
      // TODO: Implement forget password logic
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
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.w,
                right: 16.w,
                bottom: 50.h,
              ),
              child: Form(
                key: _formKey,
                child: SizedBox(
                  height: MediaQuery.of(context).size.height - 75.h,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const FormHeaderSection(
                            title: 'Forgot Password Form',
                            description:
                                'You can now create a new password for your account.',
                          ),
                          50.verticalSpace,
                          _ForgetPasswordForm(
                            trafficPoliceIdController:
                                trafficPoliceIdController,
                            phoneNumberController: phoneNumberController,
                            joinedDateController: joinedDateController,
                            servingDistrictController:
                                servingDistrictController,
                          ),
                        ],
                      ),
                      16.verticalSpace,
                      Padding(
                        padding: EdgeInsets.only(
                          bottom: 50.h,
                        ),
                        child: AppButton(
                          onPressed: _handleSubmit,
                          text: 'Save',
                        ),
                      ),
                    ],
                  ),
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
    trafficPoliceIdController.dispose();
    phoneNumberController.dispose();
    joinedDateController.dispose();
    servingDistrictController.dispose();
    super.dispose();
  }
}

class _ForgetPasswordForm extends StatelessWidget {
  const _ForgetPasswordForm({
    required this.trafficPoliceIdController,
    required this.phoneNumberController,
    required this.joinedDateController,
    required this.servingDistrictController,
  });

  final TextEditingController trafficPoliceIdController;
  final TextEditingController phoneNumberController;
  final TextEditingController joinedDateController;
  final TextEditingController servingDistrictController;

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
    return Column(
      children: [
        AppTextField(
          controller: trafficPoliceIdController,
          labelText: 'Traffic Police ID',
          hintText: 'Enter your Traffic Police ID',
          validator: (value) {
            if (value?.isEmpty ?? true) {
              return 'Please enter Traffic Police ID';
            }
            return null;
          },
        ),
        18.verticalSpace,
        AppTextField(
          readOnly: true,
          controller: joinedDateController,
          labelText: 'Joined Date',
          hintText: 'Select Joined Date',
          validator: (value) {
            if (value?.isEmpty ?? true) {
              return 'Please select joined date';
            }
            return null;
          },
          onTap: () async {
            final DateTime? picked = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime.now(),
            );

            if (picked != null) {
              joinedDateController.text =
                  "${picked.day} ${_getMonthName(picked.month)}, ${picked.year}";
            }
          },
          suffixIcon: const Icon(
            Icons.calendar_month,
            color: ColorConstants.disabledColor,
          ),
        ),
        18.verticalSpace,
        AppDropdownField(
          controller: servingDistrictController,
          labelText: 'Serving District',
          hintText: 'Select Serving District',
          options: DropDownConstants.districtOptions,
        ),
        18.verticalSpace,
        AppTextField(
          controller: phoneNumberController,
          labelText: 'Phone No.',
          hintText: 'Enter your Phone Number',
          validator: (value) {
            if (value?.isEmpty ?? true) {
              return 'Please enter phone number';
            }
            return null;
          },
        ),
      ],
    );
  }
}
