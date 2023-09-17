class Employee {
  final String name;
  final String email;

  Employee({required this.name, required this.email});

  factory Employee.fromJson(Map<String, dynamic> json) {
    return Employee(
      name: json['name'] as String,
      email: json['email'] as String,
    );
  }
}
