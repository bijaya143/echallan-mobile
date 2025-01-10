class PersonalDetailModel {
  PersonalDetailModel({
    required this.name,
    required this.trafficPoliceId,
    required this.trafficPosition,
    required this.dateOfBirth,
    required this.gender,
    required this.phoneNumber,
    required this.email,
    required this.address,
    required this.stateRegistered,
    required this.city,
    required this.zipCode,
  });
  final String name;
  final String trafficPoliceId;
  final List<String> trafficPosition;
  final String dateOfBirth;
  final List<String> gender;
  final int phoneNumber;
  final String email;
  final String address;
  final String stateRegistered;
  final String city;
  final String zipCode;
}
