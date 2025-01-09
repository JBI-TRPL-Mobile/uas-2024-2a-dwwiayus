import 'package:flutter/material.dart';
import 'package:template_project/screens/dashboard.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x80FF5733),
      body: SingleChildScrollView( // Wrap the entire body in SingleChildScrollView
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Title
            const Text(
              "Sign Up",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            // Subtitle
            const Text(
              "Selamat datang!! silahkan Sign Up",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
            const SizedBox(height: 32),

            // Name Field
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                "Name", // Text displayed above the field
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 8),

            // Email Field
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                "Enter Email", // Text displayed above the field
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                labelText: "Enter Email",
                prefixIcon: const Icon(Icons.email),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 16),

            // Password Field
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                "Password", // Text displayed above the field
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: const Icon(Icons.visibility_off),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 8),

            // Confirm Password Field
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(
                "Confirm", // Text displayed above the field
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Confirm",
                prefixIcon: const Icon(Icons.lock),
                suffixIcon: const Icon(Icons.visibility_off),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 8),

            // Forget Password
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {
                    // Handle forget password action
                  },
                  child: const Text(
                    "Forget Password?",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
              ],
            ),

            // Sign Up Button
            ElevatedButton(
              onPressed: () {
                 Navigator.push(
                   context,
                     MaterialPageRoute(builder:(context) => Dashboard()),
                  );
              },
              child: const Text("Sign Up"),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(vertical: 12),
              ),
            ),
            const SizedBox(height: 16),

            // Divider for Social Login
            Row(
              children: const [
                Expanded(child: Divider(thickness: 1)),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text("or sign in with"),
                ),
                Expanded(child: Divider(thickness: 1)),
              ],
            ),
            const SizedBox(height: 16),

            // Social Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    // Handle Google sign-in
                  },
                  icon: const Icon(Icons.g_mobiledata),
                  iconSize: 36,
                ),
                const SizedBox(width: 16),
                IconButton(
                  onPressed: () {
                    // Handle Facebook sign-in
                  },
                  icon: const Icon(Icons.facebook),
                  iconSize: 36,
                ),
              ],
            ),
            const SizedBox(height: 32),

            // Sign Up Option
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account?"),
                TextButton(
                  onPressed: () {
                    // Navigate to Sign Up screen
                  },
                  child: const Text(
                    "Sign Up Now",
                    style: TextStyle(color: Colors.blue),
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
