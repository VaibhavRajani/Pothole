import 'package:flutter/material.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/su.png',
              width: 150,
            ),
            const SizedBox(height: 20),
            Text(
              'About Us',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Text(
              'We are three individuals: Shubham Gurav, Saurabh Agrawal, and Vaibhav Rajani. Currently, we are pursuing our Master\'s in Computer Science at Syracuse University. This app is built to detect potholes and alert a user to drive carefully while passing through. Moreover, it is designed with the potential for integration into various other applications, making it a versatile tool for enhancing road safety and maintenance.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
