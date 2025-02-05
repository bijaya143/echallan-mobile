import 'package:echalan/core/extensions/pop_extension.dart';
import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/feature/auth_user/auth_user_dashboard/data/model/violation_record_model.dart';
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    50.verticalSpace,
                    DetailTextCard(
                      title: 'Challan No.',
                      value: widget.violationRecordModel.ticketNumber,
                    ),
                    16.verticalSpace,
                    DetailTextCard(
                      title: 'Issued Date',
                      value: widget.violationRecordModel.issueDate,
                    ),
                    40.verticalSpace,
                    Text(
                      'Reason',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: ColorConstants.disabledTextColor,
                      ),
                    ),
                    16.verticalSpace,
                    TextField(
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
                    ),
                    SizedBox(height: 80.h),
                  ],
                ),
              ),
              Positioned(
                left: 24.w,
                right: 24.w,
                bottom: 24.h,
                child: AppButton(
                  text: 'Submit',
                  onPressed: () {
                    context.popTimes(2);
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
