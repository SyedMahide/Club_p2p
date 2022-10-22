class RegistrationModel {
  RegistrationModel({
    this.firstName,
    this.lastName,
    this.email,
    this.phone,
    this.nid,
    this.dateOfBirth,
    this.profession,
    this.userTypeId,
    this.password,
    this.passwordConfirmation,
    this.deviceName,
    this.concernId,
  });

  String? firstName;
  String? lastName;
  String? email;
  String? phone;
  String? nid;
  String? dateOfBirth;
  String? profession;
  int? userTypeId;
  String? password;
  String? passwordConfirmation;
  String? deviceName;
  int? concernId;

  factory RegistrationModel.fromJson(Map<String, dynamic> json) =>
      RegistrationModel(
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        phone: json["phone"],
        nid: json["nid"],
        dateOfBirth: json["date_of_birth"],
        profession: json["profession"],
        userTypeId: json["user_type_id"],
        password: json["password"],
        passwordConfirmation: json["password_confirmation"],
        deviceName: json["device_name"],
        concernId: json["concern_id"],
      );

  Map<String, dynamic> toJson() => {
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "phone": phone,
        "nid": nid,
        "date_of_birth": dateOfBirth,
        "profession": profession,
        "user_type_id": userTypeId,
        "password": password,
        "password_confirmation": passwordConfirmation,
        "device_name": deviceName,
        "concern_id": concernId,
      };
}
