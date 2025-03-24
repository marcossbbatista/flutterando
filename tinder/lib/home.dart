import 'package:flutter/material.dart';
import 'package:mockups/buttonRow.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  static const basicColor = Color(0xFFFF6B6B);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back, color: Colors.white),
        backgroundColor: basicColor,
      ),
      backgroundColor: basicColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Tinder', style: TextStyle(color: Colors.white, fontSize: 80)),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'By tapping Create Account or Sign In, you agree to our'
                    '\nTerms. Learn how we process your data in our Privacy \nand'
                    'Cookies Policy',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  buttonRow(
                    width: 10,
                    logo: 'assets/apple_white.png',
                    basicColor: basicColor,
                    title: 'SIGN IN WITH APPLE',
                  ),
                  buttonRow(
                    width: 32,
                    basicColor: basicColor,
                    logo: 'assets/icon_google.png',
                    title: 'SIGN IN WITH FACEBOOK',
                  ),
                  buttonRow(
                    width: 32,
                    basicColor: basicColor,
                    logo: 'assets/icon_google.png',
                    title: 'SIGN IN WITH PHONE NUMBER',
                  ),
                  Text(
                    'Trouble Signing In?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
