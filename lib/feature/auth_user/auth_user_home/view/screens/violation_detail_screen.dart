import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/feature/auth_user/auth_user_dashboard/data/model/violation_record_model.dart';
import 'package:echalan/route/app_route.dart';
import 'package:echalan/widgets/app_button.dart';
import 'package:echalan/widgets/detail_text_card.dart';
import 'package:echalan/widgets/text_app_bar.dart';
import 'package:flutter/gestures.dart';

class ViolationDetailScreen extends StatefulWidget {
  const ViolationDetailScreen({
    required this.violationRecordModel,
    super.key,
  });
  final ViolationRecordModel violationRecordModel;
  @override
  State<ViolationDetailScreen> createState() => _ViolationDetailScreenState();
}

class _ViolationDetailScreenState extends State<ViolationDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TextAppBar(
        title: widget.violationRecordModel.reason,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height - 75.h,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 32.w,
                vertical: 24.h,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DetailTextCard(
                        title: 'Challan No.',
                        value: widget.violationRecordModel.ticketNumber,
                        trailing: Tooltip(
                          message: 'This is your unique Challan number.',
                          child: Icon(
                            Icons.info_outline,
                            size: 20.sp,
                            color: ColorConstants.disabledTextColor,
                          ),
                        ),
                      ),
                      16.verticalSpace,
                      DetailTextCard(
                        title: 'Issued Date',
                        value: widget.violationRecordModel.issueDate,
                      ),
                      16.verticalSpace,
                      DetailTextCard(
                        title: 'District',
                        value: widget.violationRecordModel.district,
                      ),
                      16.verticalSpace,
                      DetailTextCard(
                        title: 'Issued by',
                        value: widget.violationRecordModel.issuedBy,
                      ),
                      16.verticalSpace,
                      DetailTextCard(
                        title: 'Amount',
                        value: widget.violationRecordModel.amount,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      // Text(
                      //   'You will be fined after ${widget.violationRecordModel.issueDate}',
                      //   style: TextStyle(
                      //     fontSize: 14.sp,
                      //     fontWeight: FontWeight.w400,
                      //   ),
                      // ),
                      // 24.verticalSpace,
                      AppButton(
                        text: 'Pay Now',
                        onPressed: () {
                          Navigator.pushNamed(
                            context,
                            AppRouter.paymentMethodScreen,
                          );
                        },
                      ),
                      24.verticalSpace,
                      RichText(
                        text: TextSpan(
                          text: 'You can start  ',
                          style: TextStyle(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                            color: ColorConstants.disabledTextColor,
                          ),
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
                                decorationThickness: 2.h,
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
      ),
    );
  }
}
