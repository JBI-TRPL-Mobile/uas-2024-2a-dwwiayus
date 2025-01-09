import 'package:template_project/screens/login.dart';
import 'package:template_project/screens/signup.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/message_provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final messageProvider = Provider.of<MessageProvider>(context);

    return Scaffold(
      backgroundColor: Color(0x80FF5733),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Placeholder untuk gambar
              Container(
                width: 200,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0x80FF5733)),
                ),
                child: Center(
                  child: Image.asset(
                    'images/image.png',
                  ),
                ),
              ),
              SizedBox(height: 20),
              // Teks dari datamessage.json
              Text(
                messageProvider.messages.isNotEmpty
                    ? messageProvider.messages[0].massage
                    : "Sudah Punya Akun?",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              // Tombol
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                         MaterialPageRoute(builder:(context) => SignInScreen()),
                        );// Navigasi ke login screen
                    },
                    child: Text("Login"),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                         MaterialPageRoute(builder:(context) => SignUpScreen()),
                        );
                      // Navigasi ke sign-up screen
                    },
                    child: Text("Sign up"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
