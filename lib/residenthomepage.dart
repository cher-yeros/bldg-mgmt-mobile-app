import 'package:flutter/material.dart';

class ResidentHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200.0),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          flexibleSpace: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Container(
              decoration: BoxDecoration(
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Condominium',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'BUlbula 40/60, Block 07',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                color: Colors.white70,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Hello,',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'Samuel Z.',
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    color: Colors.white70,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(width: 2.0),
                            IconButton(
                              icon: Icon(Icons.account_circle_outlined,
                                  color: Colors.white, size: 36.0),
                              onPressed: () {
                                // Handle profile button action here
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      'RESIDENT HOME PAGE',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 30.0,
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
        padding: EdgeInsets.only(top: 20.0, left: 20, right: 20),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 30.0,
          mainAxisSpacing: 20.0,
          children: [
            _buildCard(
              context,
              icon: Icons.dashboard_outlined,
              title: 'Dashboard',
              description: 'Overview of building details',
              onTap: () {
                print('Dashboard clicked');
              },
            ),
            _buildCard(
              context,
              icon: Icons.payment_outlined,
              title: 'Payments',
              description: 'View and make payments',
              onTap: () {
                print('Payments clicked');
              },
            ),
            _buildCard(
              context,
              icon: Icons.notifications_outlined,
              title: 'Notifications',
              description: 'View important announcements',
              onTap: () {
                print('Notifications clicked');
              },
            ),
            _buildCard(
              context,
              icon: Icons.help_outline,
              title: 'Help Center',
              description: 'Get help and support',
              onTap: () {
                print('Help Center clicked');
              },
            ),
            _buildCard(
              context,
              icon: Icons.contact_mail_outlined,
              title: 'Contact Us',
              description: 'Contact building management',
              onTap: () {
                print('Contact Us clicked');
              },
            ),
            _buildCard(
              context,
              icon: Icons.settings_outlined,
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

  Widget _buildCard(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String description,
    required Function onTap,
  }) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        width: 160.0,
        height: 166.0,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.4),
              blurRadius: 8.0,
              spreadRadius: -5,
              offset: Offset(0, 8),
            ),
          ],
        ),
        child: Card(
          elevation: 0,
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Color(0xFF3981D5),
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 48.0,
                  color: Color(0xFF3981D5),
                ),
                SizedBox(height: 8.0),
                Text(
                  title,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF3981D5),
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 12.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
