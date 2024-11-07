import 'package:flutter/material.dart';

import 'loginscreen.dart';
import 'committeehomepage.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
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
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
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
                      SizedBox(height: 8), // Space between label and text field
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: Container(
                          width:
                              290, // Width set to 290 as per your Figma design
                          height: 40, // Set height to 40
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter your phone number',
                              hintStyle: TextStyle(
                                color: Color(
                                    0xFF1C3D5A), // Updated placeholder color
                                fontSize: 14, // Placeholder text size
                                // Removed fontWeight for normal weight
                              ),
                              filled: true,
                              fillColor:
                                  Color(0xFFF1F3F5), // Updated background color
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // Set border radius to 10
                                borderSide: BorderSide(
                                    color: Colors.green,
                                    width: 1), // Green border
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // Set border radius to 10
                                borderSide: BorderSide(
                                    color: Colors.green,
                                    width: 2), // Thicker green border on focus
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // Set border radius to 10
                                borderSide: BorderSide(
                                    color: Colors.green,
                                    width: 1), // Green border when enabled
                              ),
                            ),
                            style: TextStyle(
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
                  SizedBox(
                      height:
                          20), // Increased space between fields (was 20, now 60)

                  // Password label and field
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
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
                      SizedBox(height: 8), // Space between label and text field
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40.0),
                        child: Container(
                          width:
                              290, // Width set to 290 as per your Figma design
                          height: 40, // Set height to 40
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Enter your password',
                              hintStyle: TextStyle(
                                color: Color(
                                    0xFF1C3D5A), // Updated placeholder color
                                fontSize: 14, // Placeholder text size
                                // Removed fontWeight for normal weight
                              ),
                              filled: true,
                              fillColor:
                                  Color(0xFFF1F3F5), // Updated background color
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // Set border radius to 10
                                borderSide: BorderSide(
                                    color: Colors.green,
                                    width: 1), // Green border
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // Set border radius to 10
                                borderSide: BorderSide(
                                    color: Colors.green,
                                    width: 2), // Thicker green border on focus
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // Set border radius to 10
                                borderSide: BorderSide(
                                    color: Colors.green,
                                    width: 1), // Green border when enabled
                              ),
                            ),
                            style: TextStyle(
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
                  SizedBox(
                      height:
                          60), // Increased space between fields and button (was 40, now 80)

                  // Register button
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 10.0), // Padding for the top of the button
                    child: SizedBox(
                      width: 241,
                      height: 46, // Smaller button height
                      child: ElevatedButton(
                        onPressed: () {
                          // Add your registration logic here
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => CommitteeHomePage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          side: BorderSide(
                              color: Colors.green, width: 2), // Green border
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        child: Text(
                          'Register',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight:
                                FontWeight.bold, // Bold text for the button
                            color: Colors.white, // White text color
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  // Login text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account? ",
                        style: TextStyle(color: Colors.white),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigate to the login page
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    LoginScreen()), // Replace LoginScreen with your actual screen widget
                          );
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
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
