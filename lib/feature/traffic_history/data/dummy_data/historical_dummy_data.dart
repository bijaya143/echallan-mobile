import 'package:echalan/feature/traffic_history/data/model/historical_model.dart';

final List<TrafficHistoricalModel> trafficHistoricalData = [
  TrafficHistoricalModel(
    id: '1',
    title: 'No Helmet',
    ticketNumber: '9876543210',
    issueDate: '2024-02-15',
    status: 'Paid',
    amount: 'Rs 2000',
    licienceNumber: '1234567890',
    vehicleNumber: '1234567890',
    district: 'Kathmandu',
    reason: 'No Helmet',
  ),
  TrafficHistoricalModel(
    id: '2',
    title: 'Red Light Violation',
    ticketNumber: '5432109876',
    issueDate: '2024-02-10',
    status: 'Pending',
    amount: 'Rs 1500',
    licienceNumber: '1234567890',
    vehicleNumber: '1234567890',
    district: 'Kathmandu',
    reason: 'Red Light Violation',
  ),
  TrafficHistoricalModel(
    id: '3',
    title: 'Wrong Parking',
    ticketNumber: '1357924680',
    issueDate: '2024-02-05',
    status: 'Unpaid',
    amount: 'Rs 800',
    licienceNumber: '1234567890',
    vehicleNumber: '1234567890',
    district: 'Kathmandu',
    reason: 'Wrong Parking',
  ),
];
final List<TrafficHistoricalModel> trafficDisputedData = [
  TrafficHistoricalModel(
    id: '2',
    title: 'No License',
    ticketNumber: '2468013579',
    issueDate: '2024-01-25',
    status: 'Approved',
    amount: 'Rs 2500',
    licienceNumber: '1234567890',
    vehicleNumber: '1234567890',
    district: 'Kathmandu',
    reason: 'No License',
  ),
  TrafficHistoricalModel(
    id: '3',
    title: 'Over Speeding',
    ticketNumber: '3698521470',
    issueDate: '2024-01-20',
    status: 'Approved',
    amount: 'Rs 3000',
    licienceNumber: '1234567890',
    vehicleNumber: '1234567890',
    district: 'Kathmandu',
    reason: 'Over Speeding',
  ),
];
