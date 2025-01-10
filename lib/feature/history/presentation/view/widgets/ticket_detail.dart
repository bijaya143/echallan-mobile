import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/feature/history/data/model/historical_model.dart';
import 'package:echalan/widgets/app_text_field.dart';

class TicketDetail extends StatefulWidget {
  const TicketDetail({super.key, required this.historicalModel});
  final HistoricalModel historicalModel;

  @override
  State<TicketDetail> createState() => _TicketDetailState();
}

class _TicketDetailState extends State<TicketDetail> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Ticket Detail',
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child: Column(
            children: [
              SizedBox(height: 24.h),
              AppTextField(
                labelText: 'Ticket Number',
                controller: TextEditingController(
                  text: widget.historicalModel.ticketNumber,
                ),
                readOnly: true,
              ),
              SizedBox(height: 24.h),
              AppTextField(
                labelText: 'Issue Date',
                controller: TextEditingController(
                  text: widget.historicalModel.issueDate,
                ),
                readOnly: true,
              ),
              SizedBox(height: 24.h),
              AppTextField(
                labelText: 'License Number',
                controller: TextEditingController(
                  text: widget.historicalModel.licienceNumber,
                ),
                readOnly: true,
              ),
              SizedBox(height: 24.h),
              AppTextField(
                labelText: 'Vehicle Number',
                controller: TextEditingController(
                  text: widget.historicalModel.vehicleNumber,
                ),
                readOnly: true,
              ),
              SizedBox(height: 24.h),
              AppTextField(
                labelText: 'District',
                controller: TextEditingController(
                  text: widget.historicalModel.district,
                ),
                readOnly: true,
              ),
              SizedBox(height: 24.h),
              AppTextField(
                labelText: 'Reason',
                controller: TextEditingController(
                  text: widget.historicalModel.reason,
                ),
                readOnly: true,
              ),
              SizedBox(height: 24.h),
              AppTextField(
                labelText: 'Amount',
                controller: TextEditingController(
                  text: widget.historicalModel.amount,
                ),
                readOnly: true,
              ),
              SizedBox(height: 24.h),
              AppTextField(
                labelText: 'Ticket Status',
                controller: TextEditingController(
                  text: widget.historicalModel.status,
                ),
                readOnly: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
