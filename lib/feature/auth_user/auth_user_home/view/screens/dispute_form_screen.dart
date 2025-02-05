import 'package:echalan/core/extensions/pop_extension.dart';
import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/feature/auth_user/auth_user_dashboard/data/model/violation_record_model.dart';
import 'package:echalan/route/app_route.dart';
import 'package:echalan/widgets/app_button.dart';
import 'package:echalan/widgets/detail_text_card.dart';
import 'package:echalan/widgets/text_app_bar.dart';

class DisputeFormScreen extends StatefulWidget {
  const DisputeFormScreen({
    required this.violationRecordModel,
    super.key,
  });
  final ViolationRecordModel violationRecordModel;
  @override
  State<DisputeFormScreen> createState() => _DisputeFormScreenState();
}

class _DisputeFormScreenState extends State<DisputeFormScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _reasonController = TextEditingController();

  @override
  void dispose() {
    _reasonController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        appBar: const TextAppBar(
          title: 'Dispute Submit',
        ),
        body: SafeArea(
          child: Stack(
            fit: StackFit.expand,
            children: [
              SingleChildScrollView(
                padding: EdgeInsets.only(
                  left: 24.w,
                  right: 24.w,
                  bottom: 80.h,
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      20.verticalSpace,
                      Card(
                        color: ColorConstants.secondaryColor,
                        elevation: 3,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.r)),
                        child: Padding(
                          padding: EdgeInsets.all(16.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              DetailTextCard(
                                title: 'Challan No.',
                                value: widget.violationRecordModel.ticketNumber,
                              ),
                              12.verticalSpace,
                              DetailTextCard(
                                title: 'Issued Date',
                                value: widget.violationRecordModel.issueDate,
                              ),
                            ],
                          ),
                        ),
                      ),
                      20.verticalSpace,
                      Text(
                        'Reason',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: ColorConstants.disabledTextColor,
                        ),
                      ),
                      16.verticalSpace,
                      TextFormField(
                        controller: _reasonController,
                        maxLines: 12,
                        decoration: InputDecoration(
                          hintText: 'Type Reason',
                          hintStyle: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: ColorConstants.disabledColor,
                          ),
                          filled: true,
                          fillColor: ColorConstants.textFieldFillColor,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.r),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.r),
                            borderSide: const BorderSide(
                                color: ColorConstants.textFieldFillColor),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(16.r),
                            borderSide: const BorderSide(
                                color: ColorConstants.textFieldFillColor),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please provide a reason.';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 80.h),
                    ],
                  ),
                ),
              ),
              Positioned(
                left: 24.w,
                right: 24.w,
                bottom: 24.h,
                child: AppButton(
                  text: 'Submit',
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Dispute has been submitted.'),
                          backgroundColor: ColorConstants.successMessageColor,
                        ),
                      );
                      Navigator.pushReplacementNamed(
                        context,
                        AppRouter.authUserDashboardScreen,
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
