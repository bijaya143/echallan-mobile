import 'package:echalan/core/imports/ui_imports.dart';
import 'package:echalan/feature/auth_user/notification/data/dummy/notification_dummy_data.dart';
import 'package:echalan/feature/guest/traffic_update/data/dummy/traffic_update_dummy_data.dart';
import 'package:echalan/widgets/text_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TrafficUpdateBaseView extends StatefulWidget {
  const TrafficUpdateBaseView({super.key});

  @override
  State<TrafficUpdateBaseView> createState() => _TrafficUpdateBaseViewState();
}

class _TrafficUpdateBaseViewState extends State<TrafficUpdateBaseView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TextAppBar(
        title: 'Traffic Update',
        textLeftSpace: .2.sw,
      ),
      body: ListView.builder(
        itemCount: trafficUpdateDummyData.length,
        padding: const EdgeInsets.all(16),
        itemBuilder: (context, index) {
          final notification = trafficUpdateDummyData[index];
          return Card(
            elevation: 0,
            color: ColorConstants.backgroundColor,
            margin: const EdgeInsets.only(bottom: 16),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          notification.title,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 16.sp,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          notification.description,
                          style: TextStyle(
                            color: ColorConstants.disabledColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        4.verticalSpace,
                        Text(
                          DateFormat('MMM dd, yyyy').format(notification.date),
                          style: TextStyle(
                            color: ColorConstants.disabledColor,
                            fontWeight: FontWeight.w400,
                            fontSize: 12.sp,
                          ),
                        ),
                        4.verticalSpace,
                        Text(
                          notification.time,
                          style: TextStyle(
                            color: ColorConstants.primaryColor,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (notification.isRead)
                    Container(
                      width: 13.sp,
                      height: 13.sp,
                      decoration: const BoxDecoration(
                        color: ColorConstants.primaryColor,
                        shape: BoxShape.circle,
                      ),
                    )
                  else
                    SizedBox(
                      height: 13.sp,
                      width: 13.sp,
                    ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
