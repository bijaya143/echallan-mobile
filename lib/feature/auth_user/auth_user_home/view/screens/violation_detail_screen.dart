import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/feature/auth_user/auth_user_dashboard/data/model/violation_record_model.dart';
import 'package:echalan/route/app_route.dart';
import 'package:echalan/widgets/app_button.dart';
import 'package:echalan/widgets/detail_text_card.dart';
import 'package:echalan/widgets/text_app_bar.dart';
import 'package:flutter/gestures.dart';

class ViolationDetailScreen extends StatefulWidget {
  const ViolationDetailScreen({required this.violationRecordModel, super.key});
  final ViolationRecordModel violationRecordModel;

  @override
  State<ViolationDetailScreen> createState() => _ViolationDetailScreenState();
}

class _ViolationDetailScreenState extends State<ViolationDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TextAppBar(title: widget.violationRecordModel.reason),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 24.h),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  color: ColorConstants.secondaryColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r)),
                  elevation: 4,
                  child: Padding(
                    padding: EdgeInsets.all(20.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _detailItem('Challan No.',
                            widget.violationRecordModel.ticketNumber, true),
                        _detailItem('Issued Date',
                            widget.violationRecordModel.issueDate),
                        _detailItem(
                            'District', widget.violationRecordModel.district),
                        _detailItem(
                            'Issued by', widget.violationRecordModel.issuedBy),
                        _detailItem(
                            'Amount', widget.violationRecordModel.amount),
                      ],
                    ),
                  ),
                ),
                24.verticalSpace,
                Column(
                  children: [
                    AppButton(
                      text: 'Pay Now',
                      onPressed: () {
                        Navigator.pushNamed(
                            context, AppRouter.paymentMethodScreen);
                      },
                    ),
                    24.verticalSpace,
                    RichText(
                      text: TextSpan(
                        text: 'You can start  ',
                        style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: ColorConstants.disabledTextColor),
                        children: [
                          TextSpan(
                            text: 'Dispute',
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushNamed(
                                  context,
                                  AppRouter.disputeFormScreen,
                                  arguments: widget.violationRecordModel,
                                );
                              },
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                              color: ColorConstants.primaryColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _detailItem(String title, String value, [bool hasTooltip = false]) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(title,
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[700])),
              if (hasTooltip)
                Padding(
                  padding: EdgeInsets.only(left: 4.w),
                  child: Tooltip(
                    message: 'This is your unique Challan number.',
                    child: Icon(Icons.info_outline,
                        size: 16.sp, color: Colors.grey[500]),
                  ),
                ),
            ],
          ),
          Text(value,
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87)),
        ],
      ),
    );
  }
}
