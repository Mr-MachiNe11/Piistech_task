import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../api/model/employee.dart';
import 'all_employee_list.dart';


class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  List<Employee> employees = [];

  @override
  void initState() {
    super.initState();
    _fetchEmployeeData();
  }

  Future<void> _fetchEmployeeData() async {
    try {
      final response = await http.get(
        Uri.parse('https://sales-api.made-in-bd.net/api/v1/get-employee-list'),
      );

      if (response.statusCode == 200) {
        final jsonResponse = jsonDecode(response.body);
        final employeeList = jsonResponse['data'] as List<dynamic>;

        setState(() {
          employees = employeeList.map((data) => Employee.fromJson(data)).toList();
        });
      } else {
        // Handle API error
        // Show a SnackBar or other error message to the user
      }
    } catch (e) {
      // Handle network or other exceptions
      // Show an error message to the user
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        actions: [
          IconButton(
            onPressed: () {
              // Implement the logout logic here
              // You can call authState.logout() to log the user out
            },
            icon: Icon(Icons.logout),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: employees.length,
        itemBuilder: (context, index) {
          final employee = employees[index];
          return ListTile(
            title: Text(employee.name),
            subtitle: Text(employee.email),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to the "All Employee List" screen
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const AllEmployeeListScreen(),
            ),
          );
        },
        child: Icon(Icons.list),
      ),
    );
  }
}
