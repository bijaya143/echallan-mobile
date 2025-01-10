import 'package:echalan/feature/auth_user/auth_user_profile/data/model/auth_user_license_model.dart';

AuthUserLicenseModel authUserLicenseModel = AuthUserLicenseModel(
  category: 'A, B, C', // Categories for 2-wheeler, car, and heavy vehicle
  dlNumber: '01-2021-123456', // Nepal driving license format
  bloodGroup: 'B+',
  issueDate: DateTime(2021, 5, 15), // Using AD date
  expiryDate: DateTime(2026, 5, 14), // 5 years validity as per Nepal rules
  dateOfBirth: DateTime(1988, 8, 12), // AD date
  fatherOrMotherName: 'Ram Prasad Majhi',
  citizenshipNumber: '44-01-76-01234', // Nepal citizenship number format
  passportNumber: '12345678', // Nepal passport number format
  contactNumber: '+977-9851234567', // Kathmandu number series
);
