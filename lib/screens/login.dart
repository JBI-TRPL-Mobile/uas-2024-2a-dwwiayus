import 'package:flutter/material.dart';
import 'package:template_project/screens/dashboard.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x80FF5733),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Title
            const Text(
              "Login",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            // Subtitle
            const Text(
              "Selamat datang! silahkan Login",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.black),
            ),
            const SizedBox(height: 32),

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
            // Email Field
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
            // Password Field
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

            // Forget Password
            Row(
  mainAxisAlignment: MainAxisAlignment.end, // Mengatur agar tombol berada di kanan
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

            // Sign In Button
            ElevatedButton(
              onPressed: () {
                 Navigator.push(
                        context,
                         MaterialPageRoute(builder:(context) => Dashboard()),
                        );
                // Handle sign-in action
              },
              child: const Text("Login"),
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