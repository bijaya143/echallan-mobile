import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/feature/guest/find_chalan/data/model/chalan_detail_model.dart';
import 'package:echalan/route/app_route.dart';
import 'package:echalan/widgets/app_button.dart';
import 'package:echalan/widgets/app_text_field.dart';

class BottomSheetForm extends StatefulWidget {
  const BottomSheetForm({
    super.key,
    required this.chalanDetail,
  });

  final ChalanDetailModel chalanDetail;

  @override
  State<BottomSheetForm> createState() => _BottomSheetFormState();
}

class _BottomSheetFormState extends State<BottomSheetForm> {
  // Add controllers
  late final TextEditingController _chalanNoController;
  late final TextEditingController _licenseController;
  late final TextEditingController _issueDateController;
  late final TextEditingController _issuedByController;
  late final TextEditingController _amountController;
  late final TextEditingController _reasonController;

  @override
  void initState() {
    super.initState();
    // Initialize controllers with values from chalanDetail
    _chalanNoController = TextEditingController(
      text: widget.chalanDetail.challanNo,
    );
    _licenseController = TextEditingController(
      text: widget.chalanDetail.licenseNo,
    );
    _issueDateController = TextEditingController(
      text: widget.chalanDetail.issueDate,
    );
    _issuedByController = TextEditingController(
      text: widget.chalanDetail.issuedBy,
    );
    _amountController = TextEditingController(
      text: widget.chalanDetail.amount.toString(),
    );
    _reasonController = TextEditingController(
      text: widget.chalanDetail.reason,
    );
  }

  @override
  void dispose() {
    // Dispose controllers
    _chalanNoController.dispose();
    _licenseController.dispose();
    _issueDateController.dispose();
    _issuedByController.dispose();
    _amountController.dispose();
    _reasonController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: 24.w,
            right: 8.w,
            top: 8.h,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Challan details',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.close,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24.w,
            vertical: 16.h,
          ),
          child: Column(
            children: [
              AppTextField(
                readOnly: true,
                controller: _chalanNoController,
                labelText: 'Challan No',
                hintText: 'Enter Challan Number',
              ),
              SizedBox(height: 16.h),
              AppTextField(
                readOnly: true,
                controller: _licenseController,
                labelText: 'License Number',
                hintText: 'Enter License Number',
              ),
              SizedBox(height: 16.h),
              AppTextField(
                readOnly: true,
                controller: _issueDateController,
                labelText: 'Issue Date',
                hintText: 'DD/MM/YYYY',
              ),
              SizedBox(height: 16.h),
              AppTextField(
                readOnly: true,
                controller: _issuedByController,
                labelText: 'Issued By',
                hintText: 'Authority Name',
              ),
              SizedBox(height: 16.h),
              AppTextField(
                readOnly: true,
                controller: _amountController,
                labelText: 'Amount',
                hintText: 'Enter Amount',
                prefixText: 'Rs. ',
              ),
              SizedBox(height: 16.h),
              AppTextField(
                readOnly: true,
                controller: _reasonController,
                labelText: 'Reason',
                hintText: 'Enter Reason',
                maxLines: 2,
              ),
              SizedBox(height: 24.h),
              AppButton(
                onPressed: () {
                  FocusScope.of(context).unfocus();
                  Navigator.pop(context);
                  Navigator.pushNamed(
                    context,
                    AppRouter.paymentMethodScreen,
                  );
                  // Handle payment logic
                },
                text: 'Pay Now',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
