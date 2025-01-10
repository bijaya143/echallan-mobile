import 'package:echalan/core/constants/dropdown_constants.dart';
import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/widgets/app_button.dart';
import 'package:echalan/widgets/app_drop_down.dart';
import 'package:echalan/widgets/app_text_field.dart';

class CreateTicketForm extends StatefulWidget {
  const CreateTicketForm({super.key});

  @override
  State<CreateTicketForm> createState() => _CreateTicketFormState();
}

class _CreateTicketFormState extends State<CreateTicketForm> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController vehicleNumberController = TextEditingController();
  final TextEditingController licenseNumberController = TextEditingController();
  final TextEditingController districtController = TextEditingController();
  final TextEditingController reasonController = TextEditingController();
  final TextEditingController amountController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
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
          title: Center(
            child: Text(
              'Create Ticket',
              style: TextStyle(
                fontSize: 24.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
              left: 16.w,
              right: 16.w,
              bottom: 25.h,
            ),
            child: Stack(
              children: [
                SizedBox(
                  width: 1.sw,
                  height: MediaQuery.of(context).size.height - 20.h,
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 40.h,
                        bottom: 60.h,
                      ),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
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
                              keyBoardType: TextInputType.number,
                              controller: licenseNumberController,
                              labelText: 'License Number',
                              hintText: 'Enter your license number',
                              validator: (value) {
                                if (value?.isEmpty ?? true) {
                                  return 'Please enter your license number';
                                }
                                return null;
                              },
                            ),
                            24.verticalSpace,
                            AppTextField(
                              controller: vehicleNumberController,
                              labelText: 'Vehicle Number',
                              hintText: 'Enter your vehicle number',
                              validator: (value) {
                                if (value?.isEmpty ?? true) {
                                  return 'Please enter your vehicle number';
                                }
                                return null;
                              },
                            ),
                            24.verticalSpace,
                            AppDropdownField(
                              controller: districtController,
                              labelText: 'Serving District',
                              hintText: 'Select Serving District',
                              options: DropDownConstants.districtOptions,
                            ),
                            24.verticalSpace,
                            AppDropdownField(
                              controller: reasonController,
                              labelText: 'Reason',
                              hintText: 'Select Reason',
                              options: DropDownConstants.reasonOptions,
                            ),
                            24.verticalSpace,
                            AppTextField(
                              controller: amountController,
                              labelText: 'Amount',
                              hintText: 'Enter the amount',
                              validator: (value) {
                                if (value?.isEmpty ?? true) {
                                  return 'Please enter the amount';
                                }
                                return null;
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: AppButton(
                    onPressed: () {},
                    text: 'Create',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
