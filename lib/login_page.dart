import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final String nama;

  const LoginPage({super.key, required this.nama});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(nama),
      ),
      body: Center(
        child: Text(
          "Halo $nama",
          style: const TextStyle(
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}