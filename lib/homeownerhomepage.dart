import 'package:flutter/material.dart';
import 'custom_card.dart';
import 'residenthomepage.dart';

class HomeownerHomePage extends StatelessWidget {
  const HomeownerHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200.0),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          flexibleSpace: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Container(
              decoration: const BoxDecoration(
                color: Color(0xFF3981D5),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(16),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 50.0, left: 10.0, right: 5.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Condominium',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              'BUlbula 40/60, Block 07',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Hello,',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  'Samuel Z.',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(width: 2.0),
                            Container(
                              width: 36.0,
                              height: 36.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                image: const DecorationImage(
                                  image: AssetImage('assets/DSC.JPG'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () {
                                    print("image clicked");
                                  },
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20.0),
                    const Text(
                      'HOMEOWNER HOME PAGE',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 27.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
        child: CustomCard(
          children: [
            CustomCardItem(
              imagePath: 'assets/icons/dashboard.png',
              title: 'Dashboard',
              description: 'Overview of building details',
              onTap: () {
                print('Dashboard clicked');
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ResidentHomePage()),
                );
              },
            ),
            CustomCardItem(
              imagePath: 'assets/icons/residents.png',
              title: 'Payments',
              description: 'View and make payments',
              onTap: () {
                print('Payments clicked');
              },
            ),
            CustomCardItem(
              imagePath: 'assets/icons/residents.png',
              title: 'Notifications',
              description: 'View important announcements',
              onTap: () {
                print('Notifications clicked');
              },
            ),
            CustomCardItem(
              imagePath: 'assets/icons/residents.png',
              title: 'Help Center',
              description: 'Get help and support',
              onTap: () {
                print('Help Center clicked');
              },
            ),
            CustomCardItem(
              imagePath: 'assets/icons/residents.png',
              title: 'Contact Us',
              description: 'Contact building management',
              onTap: () {
                print('Contact Us clicked');
              },
            ),
            CustomCardItem(
              imagePath: 'assets/icons/residents.png',
              title: 'Settings',
              description: 'Manage your account settings',
              onTap: () {
                print('Settings clicked');
              },
            ),
          ],
        ),
      ),
    );
  }
}
