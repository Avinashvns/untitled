
class BackendDetails {
  final int id;
  final String name;
  final String email;
  final String gender;
  final String status;

  const BackendDetails({
    required this.id,
    required this.name,
    required this.email,
    required this.gender,
    required this.status,
  });
  factory BackendDetails.fromJson(Map<String,dynamic>json){
    return BackendDetails(
        id: json['id'] as int,
        name: json['name'] as String,
        email: json['email'] as String,
        gender: json['gender'] as String,
        status: json['status'] as String,
    );
  }
}