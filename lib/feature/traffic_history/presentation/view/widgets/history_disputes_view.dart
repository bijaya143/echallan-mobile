import 'package:echalan/feature/traffic_history/data/model/historical_model.dart';
import 'package:echalan/route/app_route.dart';
import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/feature/traffic_history/data/dummy_data/historical_dummy_data.dart';

class TrafficHistoryDisputesView extends StatelessWidget {
  const TrafficHistoryDisputesView({super.key});

  Color _getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case 'paid':
        return ColorConstants.paidCardColor;
      case 'pending':
        return ColorConstants.pendingCardColor;
      case 'unpaid':
        return ColorConstants.unpaidCardColor;
      default:
        return ColorConstants.unpaidCardColor;
    }
  }

  Color _getTextColor(String status) {
    switch (status.toLowerCase()) {
      case 'paid':
        return ColorConstants.paidTextColor;
      case 'pending':
        return ColorConstants.pendingTextColor;
      case 'unpaid':
        return ColorConstants.unpaidTextColor;
      default:
        return ColorConstants.unpaidTextColor;
    }
  }

  void _showDisputeDialog(
      BuildContext context, TrafficHistoricalModel disputedModel) {
    showDialog(
      context: context,
      barrierDismissible: false, // Prevent closing on outside tap
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
          contentPadding: EdgeInsets.all(20.w), // Adjust padding
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Close Icon on Top Right
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Dispute Details",
                    style:
                        TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
                  ),
                  IconButton(
                    icon: Icon(Icons.close, color: Colors.grey),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              Divider(), // Add a divider for better separation
              _dialogItem("Challan No.", disputedModel.ticketNumber),
              _dialogItem("Issue Date", disputedModel.issueDate),
              _dialogItem("Amount", disputedModel.amount),
              SizedBox(height: 16.h), // Space before buttons

              // Buttons (Approve & Cancel)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Challan dispute has been canceled.'),
                            backgroundColor: ColorConstants.successMessageColor,
                          ),
                        );
                        Navigator.pushReplacementNamed(
                          context,
                          AppRouter.trafficDashboardScreen,
                        );
                      },
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.black,
                          backgroundColor: ColorConstants.cancelledCardColor),
                      child: Text("Cancel"),
                    ),
                  ),
                  SizedBox(width: 8.w), // Space between buttons
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Challan dispute has been approved.'),
                            backgroundColor: ColorConstants.successMessageColor,
                          ),
                        );
                        Navigator.pushReplacementNamed(
                          context,
                          AppRouter.trafficDashboardScreen,
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black,
                        backgroundColor: ColorConstants.paidTextColor,
                      ),
                      child: Text("Approve"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Widget _dialogItem(String title, String value) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
          ),
          Text(
            value,
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: trafficDisputedData.length,
        itemBuilder: (context, index) {
          final disputedModel = trafficDisputedData[index];
          return GestureDetector(
            onTap: () {
              _showDisputeDialog(context, disputedModel);
            },
            child: Container(
              padding: EdgeInsets.all(24.w),
              margin: EdgeInsets.symmetric(vertical: 8.h),
              decoration: BoxDecoration(
                color: ColorConstants.cardColor2.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10.r),
              ),
              width: 1.sw,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    disputedModel.title,
                    style:
                        TextStyle(fontSize: 16.sp, fontWeight: FontWeight.w600),
                  ),
                  8.verticalSpace,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _cardItem(
                                "Challan No.", disputedModel.ticketNumber),
                            4.verticalSpace,
                            _cardItem("Issue Date", disputedModel.issueDate),
                            4.verticalSpace,
                            _cardItem("Amount", disputedModel.amount),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _cardItem(String title, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
        ),
        Text(
          value,
          style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
              color: ColorConstants.disabledTextColor),
        ),
      ],
    );
  }
}
