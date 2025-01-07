import 'package:flutter/material.dart';
import 'package:sysapp/main.dart';
import 'registerscreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF4A90E2), // Start color
              Color(0xFF1C3D5A), // End color
            ],
          ),
        ),
        child: Stack(
          children: [
            PageView(
              controller: _pageController,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: <Widget>[
                buildPage(
                  'Welcome aboard!',
                  '“Your Resident Management Solution.”',
                  'assets/buildings.png',
                  true,
                ),
                buildPage(
                  'Manage Residents',
                  '“Easily manage resident information.”',
                  'assets/buildings.png',
                  false,
                ),
                buildPage(
                  'Stay Connected',
                  '“Keep in touch with your community.”',
                  'assets/buildings.png',
                  false,
                ),
              ],
            ),
            Positioned(
              bottom: 80,
              left: 0,
              right: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(3, (index) {
                  return AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    height: 8,
                    width: _currentPage == index ? 24 : 8,
                    decoration: BoxDecoration(
                      color: _currentPage == index
                          ? Colors.green // Active slider color
                          : Colors.white, // Inactive slider color
                      borderRadius: BorderRadius.circular(12),
                    ),
                  );
                }),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 40,
              right: 40,
              child: _currentPage == 2
                  ? Center(
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigate to the next screen when "Get Started" is pressed
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const RegisterScreen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 100, vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: const Text(
                          'Get Started',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const GradientBackgroundScreen()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            side:
                                const BorderSide(color: Colors.green, width: 2),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 60, vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: const Text(
                            'Skip',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if (_currentPage < 2) {
                              _pageController.nextPage(
                                duration: const Duration(milliseconds: 300),
                                curve: Curves.easeInOut,
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 60, vertical: 12),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          child: const Text(
                            'Next',
                            style: TextStyle(color: Colors.white),
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

  Widget buildPage(
      String title, String subtitle, String imagePath, bool isFirstPage) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(
          width: 150, // Set width to make image smaller
          height: 150, // Set height to make image smaller
          child: Image.asset(imagePath),
        ),
        const SizedBox(height: 40),
        Text(
          title,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 10),
        Text(
          subtitle,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white70,
          ),
          textAlign: TextAlign.center,
        ),
        if (isFirstPage) const SizedBox(height: 20),
      ],
    );
  }
}
