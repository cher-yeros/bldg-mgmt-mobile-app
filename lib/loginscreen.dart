import 'package:flutter/material.dart';

import 'registerscreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF4A90E2), // Start color
              Color(0xFF1C3D5A), // End color
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 360.0), // Additional padding to push everything down
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // Phone number label and field
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40.0),
                        child: Row(
                          children: [
                            Icon(Icons.phone,
                                color:
                                    Colors.white), // Updated to Material icon
                            SizedBox(width: 8),
                            Text(
                              'Phone Number',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14, // Smaller font size
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                          height: 8), // Space between label and text field
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: SizedBox(
                          width: 290, // Width set to 290 as per your design
                          height: 40, // Set height to 40
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter your phone number',
                              hintStyle: const TextStyle(
                                color: Color(
                                    0xFF1C3D5A), // Updated placeholder color
                                fontSize: 14, // Placeholder text size
                                // Removed fontWeight for normal weight
                              ),
                              filled: true,
                              fillColor: const Color(
                                  0xFFF1F3F5), // Updated background color
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // Set border radius to 10
                                borderSide: const BorderSide(
                                    color: Colors.green,
                                    width: 1), // Green border
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // Set border radius to 10
                                borderSide: const BorderSide(
                                    color: Colors.green,
                                    width: 2), // Thicker green border on focus
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // Set border radius to 10
                                borderSide: const BorderSide(
                                    color: Colors.green,
                                    width: 1), // Green border when enabled
                              ),
                            ),
                            style: const TextStyle(
                                color: Colors
                                    .white), // Text color inside the field
                            keyboardType: TextInputType.phone,
                            minLines: 1,
                            maxLines: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20), // Space between fields

                  // Password label and field
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40.0),
                        child: Row(
                          children: [
                            Icon(Icons.lock,
                                color: Colors.white), // White lock icon
                            SizedBox(width: 8), // Space between icon and text
                            Text(
                              'Password',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14, // Smaller font size
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                          height: 8), // Space between label and text field
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: SizedBox(
                          width: 290, // Width set to 290 as per your design
                          height: 40, // Set height to 40
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter your password',
                              hintStyle: const TextStyle(
                                color: Color(
                                    0xFF1C3D5A), // Updated placeholder color
                                fontSize: 14, // Placeholder text size
                                // Removed fontWeight for normal weight
                              ),
                              filled: true,
                              fillColor: const Color(
                                  0xFFF1F3F5), // Updated background color
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // Set border radius to 10
                                borderSide: const BorderSide(
                                    color: Colors.green,
                                    width: 1), // Green border
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // Set border radius to 10
                                borderSide: const BorderSide(
                                    color: Colors.green,
                                    width: 2), // Thicker green border on focus
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // Set border radius to 10
                                borderSide: const BorderSide(
                                    color: Colors.green,
                                    width: 1), // Green border when enabled
                              ),
                            ),
                            style: const TextStyle(
                                color: Colors
                                    .white), // Text color inside the field
                            obscureText: true,
                            minLines: 1,
                            maxLines: 1,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 60), // Space between fields and button

                  // Login button
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0), // Padding for the top of the button
                    child: SizedBox(
                      width: 241,
                      height: 46, // Smaller button height
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your login logic here
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          side: const BorderSide(
                              color: Colors.green, width: 2), // Green border
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 16,
                            // Removed fontWeight for normal weight
                            color: Colors.white, // White text color
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Register text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account? ",
                        style: TextStyle(color: Colors.white),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigate to the register page
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const RegisterScreen()), // Replace RegisterScreen with your actual screen widget
                          );
                        },
                        child: const Text(
                          "Register",
                          style: TextStyle(
                            color: Colors.green,
                            // Removed fontWeight for normal weight
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
