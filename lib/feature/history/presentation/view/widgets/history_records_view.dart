import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/feature/history/data/dummy_data/historical_dummy_data.dart';
import 'package:echalan/widgets/record_cart.dart';
import 'package:echalan/route/app_route.dart';

class HistoryRecordsView extends StatelessWidget {
  const HistoryRecordsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: historicalData.length,
        itemBuilder: (context, index) {
          return RecordCard(
            title: historicalData[index].title,
            ticketNumber: historicalData[index].ticketNumber,
            issueDate: historicalData[index].issueDate,
            amount: historicalData[index].amount,
            status: historicalData[index].status,
            onTap: () {
              Navigator.pushNamed(
                context,
                AppRouter.ticketDetailScreen,
                arguments: historicalData[index],
              );
            },
          );
        },
      ),
    );
  }
}
