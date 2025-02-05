import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/feature/traffic_history/data/model/historical_model.dart';

class TrafficTicketDetail extends StatelessWidget {
  const TrafficTicketDetail({super.key, required this.historicalModel});
  final TrafficHistoricalModel historicalModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.secondaryColor,
        elevation: 2,
        centerTitle: true,
        title: Text(
          'Challan Detail',
          style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w600,
              color: Colors.black87),
        ),
        iconTheme: IconThemeData(color: Colors.black87),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Card(
          color: ColorConstants.secondaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.r)),
          elevation: 3,
          child: Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _detailRow("Challan No.", historicalModel.ticketNumber),
                _detailRow("Issue Date", historicalModel.issueDate),
                _detailRow("License No.", historicalModel.licienceNumber),
                _detailRow("Vehicle No.", historicalModel.vehicleNumber),
                _detailRow("District", historicalModel.district),
                _detailRow("Reason", historicalModel.reason),
                _detailRow("Amount", "${historicalModel.amount}"),
                SizedBox(height: 12.h),

                // Ticket Status with Badge
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Ticket Status",
                        style: TextStyle(
                            fontSize: 15.sp, fontWeight: FontWeight.w500)),
                    _statusBadge(historicalModel.status),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Widget for each detail row (instead of column)
  Widget _detailRow(String title, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 6.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[700])),
          Text(value,
              style: TextStyle(
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black87)),
        ],
      ),
    );
  }

  // Status Badge
  Widget _statusBadge(String status) {
    Color statusColor;
    switch (status.toLowerCase()) {
      case 'paid':
        statusColor = Colors.green;
        break;
      case 'pending':
        statusColor = Colors.orange;
        break;
      case 'unpaid':
        statusColor = Colors.red;
        break;
      default:
        statusColor = Colors.grey;
    }
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
      decoration: BoxDecoration(
        color: statusColor.withOpacity(0.15),
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Text(
        status.toUpperCase(),
        style: TextStyle(
            fontSize: 13.sp, fontWeight: FontWeight.w600, color: statusColor),
      ),
    );
  }
}
