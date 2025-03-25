import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CreateAccountScreen extends StatefulWidget {
  @override
  _CreateAccountScreenState createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController otpController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  File? _tradeLicense;
  bool _passwordVisible = false;

  Future<void> _pickImage() async {
    final pickedFile = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _tradeLicense = File(pickedFile.path);
      });
    }
  }

  void _signUp() {
    // Handle sign-up logic here (send data to Node.js backend)
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 60),
            Center(
              child: Text("Create Account", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 10),
            Center(
              child: Text("Fill in your information below", style: TextStyle(fontSize: 16, color: Colors.grey)),
            ),
            SizedBox(height: 20),

            // Email/Phone Input
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: "Email/Phone Number",
                hintText: "Enter your email/phone",
                suffixIcon: Icon(Icons.email, color: Colors.brown),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),

            // OTP Input
            TextField(
              controller: otpController,
              decoration: InputDecoration(
                labelText: "Verify OTP",
                hintText: "Enter OTP",
                suffixIcon: Icon(Icons.mail, color: Colors.brown),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),

            // Password Input
            TextField(
              controller: passwordController,
              obscureText: !_passwordVisible,
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Enter password",
                suffixIcon: IconButton(
                  icon: Icon(_passwordVisible ? Icons.visibility : Icons.visibility_off, color: Colors.brown),
                  onPressed: () {
                    setState(() {
                      _passwordVisible = !_passwordVisible;
                    });
                  },
                ),
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),

            // Trade License Upload
            Text("Trade License:", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            GestureDetector(
              onTap: _pickImage,
              child: Container(
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: _tradeLicense != null
                    ? Image.file(_tradeLicense!, fit: BoxFit.cover)
                    : Center(child: Text("Upload Image")),
              ),
            ),
            SizedBox(height: 20),

            // Sign Up Button
            Center(
              child: ElevatedButton(
                onPressed: _signUp,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.brown,
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                ),
                child: Text("Sign Up", style: TextStyle(color: Colors.white)),
              ),
            ),
            SizedBox(height: 10),

            // Already have an account
            Center(
              child: GestureDetector(
                onTap: () {}, // Navigate to login screen
                child: Text("Already have an account? Sign in", style: TextStyle(color: Colors.brown, fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

