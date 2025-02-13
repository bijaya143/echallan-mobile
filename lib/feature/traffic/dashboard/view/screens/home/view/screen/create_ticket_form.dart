import 'package:echalan/route/app_route.dart';
import 'package:flutter/material.dart';
import 'package:echalan/core/constants/dropdown_constants.dart';
import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/feature/traffic/dashboard/data/model/qr_code_data_model.dart';
import 'package:echalan/widgets/app_button.dart';
import 'package:echalan/widgets/app_drop_down.dart';
import 'package:echalan/widgets/app_text_field.dart';

class CreateTicketForm extends StatefulWidget {
  const CreateTicketForm({
    required this.qrCodeDataModel,
    super.key,
  });

  final QRCodeDataModel qrCodeDataModel;

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

  // Sample mapping of reasons to amounts
  final Map<String, String> reasonAmountMap = {
    "Over Speeding": "500",
    "Wrong Parking": "300",
    "Red Light Violation": "1000",
    "No Helmet": "200",
  };

  @override
  void initState() {
    super.initState();
    nameController.text = widget.qrCodeDataModel.fullName;
    licenseNumberController.text = widget.qrCodeDataModel.licenseNumber;
  }

  void _updateAmount(String? reason) {
    if (reason != null) {
      setState(() {
        reasonController.text = reason;
        amountController.text = reasonAmountMap[reason] ?? "";
      });
    }
  }

  void _showPopup() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: ColorConstants.backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r), // Rounded corners
          ),
          title: const Text(
            "Ticket Summary",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: ColorConstants.primaryColor,
            ),
          ),
          content: Padding(
            padding: EdgeInsets.all(12.w),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildDetailText("Full Name:", nameController.text),
                _buildDetailText(
                    "License Number:", licenseNumberController.text),
                _buildDetailText(
                    "Vehicle Number:", vehicleNumberController.text),
                _buildDetailText("Serving District:", districtController.text),
                _buildDetailText("Reason:", reasonController.text),
                _buildDetailText("Amount:", amountController.text),
              ],
            ),
          ),
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 12.w),
              child: ElevatedButton(
                onPressed: () {
                  // Show Snackbar
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Challan created successfully'),
                      backgroundColor: ColorConstants.successMessageColor,
                    ),
                  );

                  Navigator.pushReplacementNamed(
                    context,
                    AppRouter.trafficDashboardScreen,
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorConstants.primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  padding:
                      EdgeInsets.symmetric(vertical: 12.h, horizontal: 24.w),
                ),
                child: const Text(
                  'Confirm',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildDetailText(String title, String value) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "$title ",
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: ColorConstants.disabledTextColor,
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: ColorConstants.textColor,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
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
                              readOnly: true,
                              validator: (value) {
                                if (value?.isEmpty ?? true) {
                                  return 'Full name is required';
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
                              readOnly: true,
                              validator: (value) {
                                if (value?.isEmpty ?? true) {
                                  return 'License number is required';
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
                                  return 'Vehicle number is required';
                                }
                                return null;
                              },
                            ),
                            24.verticalSpace,
                            AppDropdownField(
                              controller: districtController,
                              labelText: 'District',
                              hintText: 'Select District',
                              options: DropDownConstants.districtOptions,
                            ),
                            24.verticalSpace,
                            AppDropdownField(
                              controller: reasonController,
                              labelText: 'Reason',
                              hintText: 'Select Reason',
                              options: DropDownConstants.reasonOptions,
                              onChanged: (value) {
                                _updateAmount(value);
                              },
                            ),
                            24.verticalSpace,
                            AppTextField(
                              controller: amountController,
                              labelText: 'Amount',
                              hintText: 'Select amount',
                              keyBoardType: TextInputType.number,
                              validator: (value) {
                                if (value?.isEmpty ?? true) {
                                  return 'Amount is required';
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
                    onPressed: () {
                      if (_formKey.currentState?.validate() ?? false) {
                        _showPopup();
                      }
                    },
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
