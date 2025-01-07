import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CommittedDashboard extends StatelessWidget {
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
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
              Row(
                children: [
                  Expanded(
                    child: _buildDashboardCard(
                      title: 'Chart of Accounts',
                      color: const Color.fromARGB(255, 178, 212, 250),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: _buildDashboardCard(
                      title: 'Total',
                      color: const Color.fromARGB(255, 178, 212, 250),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      print("Filter clicked");
                      _showFilterPopup(context);
                    },
                    child: Image.asset(
                      'assets/icons/filter.png',
                      width: 66,
                      height: 46,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print("Sort clicked");
                    },
                    child: Image.asset(
                      'assets/icons/sort.png',
                      width: 66,
                      height: 46,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              ListView(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                children: [
                  _buildCardItem('Houses Sold', '999'),
                  _buildCardItem('Home Owners', '999'),
                  _buildCardItem('Active Residents', '999'),
                  _buildCardItem('Billing Transactions', '999'),
                  _buildCardItem('Houses Sold', '999'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDashboardCard({required String title, required Color color}) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
          const SizedBox(height: 12),
          Container(
            height: 120,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCardItem(String title, String value) {
    return Card(
      color: Colors.white.withOpacity(0.9),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.symmetric(vertical: 12.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Text(
                title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Row(
              children: [
                Container(
                  width: 1,
                  height: 24,
                  color: Colors.black,
                  margin: const EdgeInsets.only(right: 50.0),
                ),
                Text(
                  value,
                  style: const TextStyle(color: Colors.black, fontSize: 18),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

//   void _showFilterPopup(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           backgroundColor: const Color(0xFF3E6EA7),
//           title: const Text(
//             'Filter Options',
//             style: TextStyle(color: Colors.white),
//           ),
//           content: SizedBox(
//             width: 300,
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                   children: [
//                     Expanded(child: _buildCheckbox('Option 1')),
//                     const SizedBox(width: 10),
//                     Expanded(child: _buildCheckbox('Option 2')),
//                     const SizedBox(width: 10),
//                     Expanded(child: _buildCheckbox('Option 3')),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           actions: [
//             Center(
//               child: TextButton(
//                 onPressed: () {
//                   Navigator.of(context).pop();
//                 },
//                 child:
//                     const Text('Close', style: TextStyle(color: Colors.white)),
//               ),
//             ),
//             Center(
//               child: TextButton(
//                 onPressed: () {
//                   // Your apply logic here
//                 },
//                 child:
//                     const Text('Apply', style: TextStyle(color: Colors.white)),
//               ),
//             ),
//           ],
//         );
//       },
//     );
//   }

//   Widget _buildCheckbox(String title) {
//     bool isChecked = false; // You may want to manage the state of each checkbox

//     return Container(
//       padding: const EdgeInsets.all(4),
//       decoration: BoxDecoration(
//         color: Colors.transparent,
//         border: Border.all(color: Colors.white),
//         borderRadius: BorderRadius.circular(15),
//       ),
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           SizedBox(
//             width: 16, // Reduced width for the checkbox
//             height: 16, // Reduced height for the checkbox
//             child: Checkbox(
//               value: isChecked,
//               onChanged: (value) {
//                 // Update the state here
//               },
//               activeColor: Colors.white,
//               checkColor: Colors.blue, // Change to your preferred color
//             ),
//           ),
//           const SizedBox(width: 6), // Small space between checkbox and text
//           Text(
//             title,
//             style: const TextStyle(
//                 color: Colors.white, fontSize: 12), // Reduced font size
//           ),
//         ],
//       ),
//     );
//   }
// }

  void _showFilterPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color(0xFF3E6EA7),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          title: const Text(
            'Filter by catagory',
            style: TextStyle(color: Colors.white),
          ),
          content: SizedBox(
            width: 300,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // Use Wrap instead of Row for automatic line breaks
                Wrap(
                  spacing: 10, // Space between elements
                  runSpacing: 10, // Space between rows
                  children: [
                    _buildCheckbox('Home Owner'),
                    _buildCheckbox('Resident'),
                    _buildCheckbox('Tenant'),
                    _buildCheckbox('Committe'),
                    // _buildCheckbox('Option 5'),
                    // _buildCheckbox('Option 6'),
                    // You can add more options here
                  ],
                ),
              ],
            ),
          ),
          actions: [
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child:
                    const Text('Close', style: TextStyle(color: Colors.white)),
              ),
            ),
            Center(
              child: TextButton(
                onPressed: () {
                  // Your apply logic here
                },
                child:
                    const Text('Apply', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _buildCheckbox(String title) {
    bool isChecked = false; // You may want to manage the state of each checkbox

    return GestureDetector(
      onTap: () {
        // Update the state here
        isChecked = !isChecked;
      },
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: isChecked ? Colors.white.withOpacity(0.2) : Colors.transparent,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (isChecked)
              const Icon(
                Icons.check,
                color: Colors.blue,
                size: 16,
              ),
            const SizedBox(width: 6), // Small space between checkbox and text
            Text(
              title,
              style: const TextStyle(
                  color: Colors.white, fontSize: 12), // Reduced font size
            ),
          ],
        ),
      ),
    );
  }
}
