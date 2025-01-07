import 'package:flutter/material.dart';
import 'splashscreen.dart';
//import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GradientBackgroundScreen(),
    );
  }
}

class GradientBackgroundScreen extends StatelessWidget {
  const GradientBackgroundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF4A90E2), // Start color
              Color(0xFF1C3D5A), // End color
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(
                  top: 1.0, bottom: 20), // Adjust this value as needed
              child: CircleAvatar(
                radius: 100, // Radius for the circular image
                backgroundColor:
                    Colors.transparent, // Make the background transparent
                child: ClipOval(
                  child: Image.asset(
                    'assets/sys3.png', // Path to your PNG asset
                    width: 300.0,
                    height: 300.0,
                    fit: BoxFit.cover, // Ensure the image covers the circle
                  ),
                ),
              ),
            ),

            const Padding(
              padding:
                  EdgeInsets.symmetric(vertical: 8.0), // Padding between text
              child: Text(
                'SYS',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            const Padding(
              padding:
                  EdgeInsets.symmetric(vertical: 8.0), // Padding between text
              child: Text(
                'Effortless Living,\n   Connected',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            const Spacer(), // Push the button closer to the bottom
            Padding(
              padding: const EdgeInsets.only(
                  bottom:
                      30.0), // Padding to position the button near the bottom
              child: ElevatedButton(
                onPressed: () {
                  // Define what happens when button is pressed
                  print('Button Pressed');
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const SplashScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF4CAF50), // Button color
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30), // Rounded corners
                  ),
                ),
                child: const Text(
                  'START NOW',
                  style: TextStyle(
                    color: Color(0xFF1C3D5A), // Text color
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
