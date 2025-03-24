import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/wine_rack.jpg', width: 120),
                SizedBox(width: 10),
                Image.asset('assets/images/table.jpg', width: 120),
              ],
            ),
            SizedBox(height: 10),
            Image.asset('assets/images/stools.jpg', width: 200),
            SizedBox(height: 30),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
                children: [
                  TextSpan(text: 'Your '),
                  TextSpan(
                    text: 'Craft',
                    style: TextStyle(color: Color(0xFF6B3D1D)),
                  ),
                  TextSpan(text: ', Your Business, Your Way!'),
                ],
              ),
            ),
            SizedBox(height: 15),
            Text(
              'J-Crafts Seller App is the ultimate platform designed for artisans and sellers who want to sell products online',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey[700]),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF6B3D1D),
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {
                // Navigate to next screen
              },
              child: Text(
                "Let's Get Started",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account ? ", style: TextStyle(fontSize: 16)),
                GestureDetector(
                  onTap: () {
                    // Navigate to Sign In screen
                  },
                  child: Text(
                    "Sign In",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF6B3D1D)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
