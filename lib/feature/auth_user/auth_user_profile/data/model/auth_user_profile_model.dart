class AuthUserProfileModel {
  AuthUserProfileModel({
    required this.fullName,
    required this.licenseNumber,
    required this.phoneNumber,
    required this.vehicleNumber,
    required this.district,
    required this.reason,
    required this.amount,
    required this.email,
    required this.address,
    required this.stateRegion,
    required this.city,
    required this.zipCode,
    required this.about,
  });
  final String fullName;
  final String licenseNumber;
  final String phoneNumber;
  final String email;
  final String address;
  final String stateRegion;
  final String city;
  final String zipCode;
  final String about;
  final String vehicleNumber;
  final String district;
  final String reason;
  final String amount;
}
