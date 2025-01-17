import 'package:echalan/feature/auth_user/auth_user_history/data/model/auth_user_historical_model.dart';

final List<AuthUserHistoricalModel> authUserHistoricalData = [
  AuthUserHistoricalModel(
    id: '1',
    title: 'No Helmet',
    ticketNumber: '9876543210',
    issueDate: '15 Feb, 2024',
    status: 'Paid',
    amount: 'Rs 2000',
    licienceNumber: 'LIC123456',
    vehicleNumber: 'BA12PA3456',
    district: 'Kathmandu',
    reason: 'No Helmet',
  ),
  AuthUserHistoricalModel(
    id: '2',
    title: 'Red Light Violation',
    ticketNumber: '5432109876',
    issueDate: '10 Feb, 2024',
    status: 'Pending',
    amount: 'Rs 1500',
    licienceNumber: 'LIC789012',
    vehicleNumber: 'BA15PA7890',
    district: 'Lalitpur',
    reason: 'Red Light Violation',
  ),
];
final List<AuthUserHistoricalModel> authUserDisputedData = [
  AuthUserHistoricalModel(
    id: '4',
    title: 'No License',
    ticketNumber: '2468013579',
    issueDate: '25 Jan, 2024',
    status: 'Approved',
    amount: 'Rs 2500',
    licienceNumber: 'LIC901234',
    vehicleNumber: 'BA25PA5678',
    district: 'Pokhara',
    reason: 'No License',
  ),
  AuthUserHistoricalModel(
    id: '5',
    title: 'Over Speeding',
    ticketNumber: '3698521470',
    issueDate: '20 Jan, 2024',
    status: 'Pending',
    amount: 'Rs 3000',
    licienceNumber: 'LIC567890',
    vehicleNumber: 'BA30PA9012',
    district: 'Chitwan',
    reason: 'Over Speeding',
  ),
  AuthUserHistoricalModel(
    id: '6',
    title: 'No Helmet',
    ticketNumber: '1234567890',
    issueDate: '15 Jan, 2024',
    status: 'Canceled',
    amount: 'Rs 1000',
    licienceNumber: 'LIC123456',
    vehicleNumber: 'BA12PA3456',
    district: 'Kathmandu',
    reason: 'No Helmet',
  ),
];
