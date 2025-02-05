import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/feature/history/presentation/logic/history_cubit.dart';
import 'package:echalan/feature/history/presentation/view/widgets/history_disputes_view.dart';
import 'package:echalan/feature/history/presentation/view/widgets/history_records_view.dart';
import 'package:echalan/feature/history/presentation/view/widgets/history_tab.dart';
import 'package:echalan/feature/traffic_history/presentation/view/widgets/history_disputes_view.dart';
import 'package:echalan/feature/traffic_history/presentation/view/widgets/history_records_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TrafficHistoryBaseView extends StatefulWidget {
  const TrafficHistoryBaseView({super.key});

  @override
  State<TrafficHistoryBaseView> createState() => _TrafficHistoryBaseViewState();
}

class _TrafficHistoryBaseViewState extends State<TrafficHistoryBaseView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HistoryCubit(),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 24.w,
          vertical: 24.h,
        ),
        child: BlocBuilder<HistoryCubit, HistoryState>(
          builder: (context, state) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'History',
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                12.verticalSpace,
                Text(
                  'ट्राफिक नियमहरू पालना गर्नु सबैको जिम्मेवारी हो। यसले तपाईँको र अरूको सुरक्षा सुनिश्चित गर्छ',
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                40.verticalSpace,
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HistoryTab(
                      title: 'Records',
                      isActive: state.selectedTabIndex == 0,
                      onTap: () {
                        context.read<HistoryCubit>().onTabSelected(0);
                      },
                    ),
                    HistoryTab(
                      title: 'Disputes',
                      isActive: state.selectedTabIndex == 1,
                      onTap: () {
                        context.read<HistoryCubit>().onTabSelected(1);
                      },
                    ),
                  ],
                ),
                24.verticalSpace,
                if (state.selectedTabIndex == 0)
                  const TrafficHistoryRecordsView()
                else
                  const TrafficHistoryDisputesView(),
              ],
            );
          },
        ),
      ),
    );
  }
}
