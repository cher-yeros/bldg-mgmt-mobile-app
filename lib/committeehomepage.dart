import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'commitedashboard.dart';
import 'commiteresidents.dart';
import 'custom_card.dart'; // Import the custom card widget
import 'homeownerhomepage.dart';

class CommitteeHomePage extends StatelessWidget {
  const CommitteeHomePage({super.key});

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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'condominium',
                              style: GoogleFonts.sourceSans3(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              'Bulbula 40/60, Block 07',
                              style: GoogleFonts.sourceSans3(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
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
                                  style: GoogleFonts.sourceSans3(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  'Samuel Z.',
                                  style: GoogleFonts.sourceSans3(
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
                    Text(
                      'COMMITTEE HOME PAGE',
                      style: GoogleFonts.sourceSans3(
                        fontSize: 25.0,
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
                print('Dashboard tapped');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CommittedDashboard()),
                  //builder: (context) => const HomeownerHomePage()),
                );
              },
            ),
            CustomCardItem(
              imagePath: 'assets/icons/residents.png',
              title: 'Residents',
              description: 'View resident information',
              onTap: () {
                print('Residents clicked');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CommiteResidents()),
                  //builder: (context) => const HomeownerHomePage()),
                );
              },
            ),
            CustomCardItem(
              imagePath: 'assets/icons/home_owners.png',
              title: 'Home Owners',
              description: 'Details of home owners',
              onTap: () {
                print('Home Owners clicked');
              },
            ),
            CustomCardItem(
              imagePath: 'assets/icons/billings.png',
              title: 'Billings',
              description: 'Billing information',
              onTap: () {
                print('Billings clicked');
              },
            ),
            CustomCardItem(
              imagePath: 'assets/icons/chart.png',
              title: 'Chart of Bills',
              description: 'Visualize billing data',
              onTap: () {
                print('Chart of Bills clicked');
              },
            ),
            CustomCardItem(
              imagePath: 'assets/icons/complaints.png',
              title: 'Complaints',
              description: 'Submit complaints',
              onTap: () {
                print('Complaints clicked');
              },
            ),
          ],
        ),
      ),
    );
  }
}
