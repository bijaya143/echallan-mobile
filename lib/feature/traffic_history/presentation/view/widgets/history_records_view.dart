import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/feature/traffic_history/data/dummy_data/historical_dummy_data.dart';
import 'package:echalan/widgets/record_cart.dart';
import 'package:echalan/route/app_route.dart';

class TrafficHistoryRecordsView extends StatelessWidget {
  const TrafficHistoryRecordsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: trafficHistoricalData.length,
        itemBuilder: (context, index) {
          return RecordCard(
            title: trafficHistoricalData[index].title,
            ticketNumber: trafficHistoricalData[index].ticketNumber,
            issueDate: trafficHistoricalData[index].issueDate,
            amount: trafficHistoricalData[index].amount,
            status: trafficHistoricalData[index].status,
            onTap: () {
              Navigator.pushNamed(
                context,
                AppRouter.trafficTicketDetailScreen,
                arguments: trafficHistoricalData[index],
              );
            },
          );
        },
      ),
    );
  }
}
