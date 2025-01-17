import 'package:echalan/feature/guest/traffic_update/data/model/traffic_update_model.dart';

final List<TrafficUpdateModel> trafficUpdateDummyData = [
  TrafficUpdateModel(
    title: 'Political Rally',
    description: 'Near by Gwarko',
    date: DateTime.now().subtract(const Duration(days: 1)),
    time: '20m',
    isRead: false,
  ),
  TrafficUpdateModel(
    title: 'Road Construction',
    description:
        'Ongoing road maintenance work at Koteshwor. Please use alternate routes.',
    date: DateTime.now().subtract(const Duration(days: 2)),
    time: '3d',
    isRead: true,
  ),
  TrafficUpdateModel(
    title: 'Traffic Diversion',
    description:
        'Due to bridge repair at Thapathali, traffic diverted through Tripureshwor.',
    date: DateTime.now().subtract(const Duration(days: 3)),
    time: '2d',
    isRead: true,
  ),
  TrafficUpdateModel(
    title: 'Heavy Traffic Alert',
    description:
        'Heavy traffic congestion reported at Kalanki intersection. Expect delays.',
    date: DateTime.now().subtract(const Duration(days: 4)),
    time: '1m',
    isRead: false,
  ),
  TrafficUpdateModel(
    title: 'Road Closure',
    description:
        'Temporary road closure at Balaju for maintenance. Will reopen at 6 PM.',
    date: DateTime.now().subtract(const Duration(days: 5)),
    time: '1d',
    isRead: true,
  ),
];
