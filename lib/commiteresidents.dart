import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommiteResidents extends StatelessWidget {
  const CommiteResidents({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80.0),
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
                padding: const EdgeInsets.only(top: 40.0, left: 10, right: 10),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Condominium',
                                style: GoogleFonts.sourceSans3(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                'Bulbula 40/60, Block 07',
                                style: GoogleFonts.sourceSans3(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 16),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Hello,',
                                style: GoogleFonts.sourceSans3(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(
                                'Samuel Z.',
                                style: GoogleFonts.sourceSans3(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 8.0),
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
                                print("Image clicked");
                              },
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        InkWell(
                          onTap: () {
                            print("Notification image clicked");
                          },
                          child: Image.asset(
                            'assets/icons/notification_icon.png',
                            width: 46,
                            height: 46,
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
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            Row(
              children: [
                Container(
                  width: 4,
                  height: 24,
                  color: Colors.black,
                ),
                const SizedBox(width: 8),
                const Text(
                  'DASHBOARD',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(height: 8),
            const Divider(),
            const SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    // Implement search functionality
                  },
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            const SizedBox(height: 16.0),
            Expanded(
              child: ListView(
                children: const [
                  _ResidentTile(
                    name: 'Samuel Zewdie',
                    phone: '021 256 65 000',
                    unit: 'Condominium, Tenant',
                  ),
                  _ResidentTile(
                    name: 'Samuel Zewdie',
                    phone: '021 256 65 000',
                    unit: 'Condominium, Tenant',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ResidentTile extends StatelessWidget {
  final String name;
  final String phone;
  final String unit;

  const _ResidentTile({
    Key? key,
    required this.name,
    required this.phone,
    required this.unit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Card(
        color: Color(0xFFE3F2FD), // Background color of the card
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0), // Rounded corners
        ),
        elevation: 3,
        child: Container(
          padding: const EdgeInsets.all(16.0),
          height: 120, // Height of the card
          child: Row(
            crossAxisAlignment:
                CrossAxisAlignment.center, // Align content vertically
            children: [
              // Image section
              ClipRRect(
                borderRadius:
                    BorderRadius.circular(8.0), // Rounded corners for the image
                child: Image.asset(
                  'assets/DSC.JPG', // Replace with your image asset path
                  width: 36, // Image width
                  height: 36, // Image height
                  fit: BoxFit.cover, // Ensures image fits within the container
                ),
              ),
              const SizedBox(width: 16), // Spacing between image and text

              // Text section
              Column(
                crossAxisAlignment:
                    CrossAxisAlignment.start, // Align text to the left
                mainAxisAlignment:
                    MainAxisAlignment.center, // Vertically center the text
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    phone,
                    style: const TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey, // Text color for phone
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    unit,
                    style: const TextStyle(
                      fontSize: 14.0,
                      color: Colors.grey, // Text color for unit
                    ),
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
