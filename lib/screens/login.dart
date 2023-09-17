import 'package:flutter/material.dart';
import 'package:piistech_task/api/api_service.dart';
import 'package:provider/provider.dart';
import '../provider/auth_state.dart';
import '../api/api_integration.dart';
import 'dashboard.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();


  /* void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 3),
      ),
    );
  }*/

  @override
  Widget build(BuildContext context) {
    final authState = Provider.of<AuthState>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                TextFormField(
                  controller: userNameController,
                  decoration: const InputDecoration(hintText: 'Username'),

                  keyboardType: TextInputType.number,
                ),
                const SizedBox(height: 20),
                TextFormField(
                  controller: passwordController,
                  decoration: const InputDecoration(hintText: 'Password'),
                  keyboardType: TextInputType.number,
                  obscureText: true,
                ),
              ],
            ),
            const SizedBox(height: 40),
            ElevatedButton(onPressed: () {
              ApiService().login(userNameController.text.toString(), passwordController.text.toString());
            }, child: Text('Login'))
          ],
        ),
      ),
    );
  }
}