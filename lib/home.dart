import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:stars_dart/editprofile.dart';
import 'package:stars_dart/login.dart';
// import 'package:flutter_map/flutter_map.dart';
// import 'package:geocoding/geocoding.dart';
// import 'package:latlong/latlong.dart';


class WidgetBottom extends StatefulWidget {
  const WidgetBottom({Key? key});

  @override
  State<WidgetBottom> createState() => _WidgetBottomState();
}

class _WidgetBottomState extends State<WidgetBottom> {
  final items = const [
    Icon(Icons.home, size: 30),
    Icon(Icons.analytics, size: 30),
    Icon(Icons.watch, size: 30),
    Icon(Icons.people, size: 30),
    Icon(Icons.person, size: 30),
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        items: items,
        index: index,
        onTap: (selectedIndex) {
          setState(() {
            index = selectedIndex;
          });
        },
        height: 70,
        backgroundColor: Colors.transparent,
        animationDuration: const Duration(milliseconds: 300),
        color: Colors.yellow.shade700,
        buttonBackgroundColor: Colors.yellow.shade700,
        animationCurve: Curves.easeInOutCubic,
      ),
      body: _buildBody(index),
    );
  }

  Widget _buildBody(int index) {
    switch (index) {
      case 0:
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.yellow.shade700,
            title: Text(
              'Star: Suicide Takes Away Rising Star',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            centerTitle: true,
          ),
          body: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30), // Add padding under the boxes
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 180,
                          height: 70,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            border: Border.all(color: Colors.grey, width: 2),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Center(
                            child: Text(
                              'Bluetooth',
                              style: TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                        ),
                        // Container(
                        //   width: 180,
                        //   height: 70,
                        //   decoration: BoxDecoration(
                        //     color: Colors.black,
                        //     border: Border.all(color: Colors.black, width: 2),
                        //     borderRadius: BorderRadius.circular(30),
                        //   ),
                        //   // child: const Center(
                        //   //   child: Text(
                        //   //     'Box 2',
                        //   //     style: TextStyle(fontSize: 18, color: Colors.white),
                        //   //   ),
                        //   // ),
                        // ),
                      ],
                    ),
                  ),
                ),
                // const Text(
                //   'Above Box 3',
                //   style: TextStyle(fontSize: 18),
                // ),
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        border: Border.all(color: Colors.black, width: 2),
                      ),
                      child: const Center(
                        child: Text(
                          'Box 3',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20), // Add some spacing between Box 3 and "Below Box 3" text
                const Text(
                  'Below Box 3',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
          ),
        );


      case 1:
        return const Scaffold(
          body: Center(
            child: Text('Map page'),
          ),
        );
        // return Scaffold(
        //   body: FlutterMap(
        //     mapController: _mapController,
        //     options: MapOptions(
        //       center: LatLng(_currentLatitude, _currentLongitude),
        //       zoom: 12.0,
        //     ),
        //     layers: [
        //       TileLayerOptions(
        //         urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
        //         subdomains: ['a', 'b', 'c'],
        //         tileSize: 256,
        //       ),
        //       MarkerLayerOptions(
        //         markers: [
        //           Marker(
        //             width: 30.0,
        //             height: 30.0,
        //             point: LatLng(_currentLatitude, _currentLongitude),
        //             builder: (ctx) => Container(
        //               child: Icon(
        //                 Icons.location_on,
        //                 color: Colors.red,
        //               ),
        //             ),
        //           ),
        //         ],
        //       ),
        //     ],
        //   ),
        //   // Your other widgets and code for handling drag gestures can go here
        // );



      case 2:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'S.T.A.R.S  Band',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30.0, right: 10), // Adjust the top margin as needed
                    child:const Image(
                      width: 167,
                      height: 160,
                      fit: BoxFit.cover,
                      image: AssetImage('images/band.png'),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 3,
            ),
                  const ListTile(
                    leading: Icon(Icons.notifications),
                    title:  Text('Notifications'),
                    // onTap: () {
                    //   // Navigator.push(
                    //   //   context,
                    //   //   MaterialPageRoute(builder: (context) => EditProfile()), // Replace YourNextScreen() with the screen you want to navigate to
                    //   // );
                    // },
                  ),
            const Divider(
              thickness: 3,
            ),
                  const ListTile(
                    leading:  Icon(Icons.device_unknown),
                    title:  Text('Find Device'),
                    // onTap: () {
                    //   _showReportDialog(context);
                    // },
                  ),
            const Divider(
              thickness: 3,
            ),
                  const ListTile(
                    leading:  Icon(Icons.alarm),
                    title:  Text('Alarms'),
                    // onTap: () {
                    //   _showReportDialog(context);
                    // },
                  ),
            const Divider(
              thickness: 3,
            ),
                 const ListTile(
                    leading:  Icon(Icons.shutter_speed),
                    title:  Text('Shutter'),
                    // onTap: () {
                    //   _showReportDialog(context);
                    // },
                  ),
            const Divider(
              thickness: 3,
            ),
                  const ListTile(
                    leading:  Icon(Icons.other_houses_sharp),
                    title:  Text('Others'),
                    // onTap: () {
                    //   _showReportDialog(context);
                    // },
                  ),
                  const Divider(
                    thickness: 3,
                  ),
                  const ListTile(
                    leading: Icon(Icons.report),
                    title: Text('Upgrade'),
                    // onTap: () {
                    //   _showReportDialog(context);
                    // },
                  ),
            const Divider(
              thickness: 3,
            ),
          ],
        );



      // case 3:
      //
      //   return const  Center(child: Text('Home Content'));

      case 4:
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             CircleAvatar(
              radius: 50,
              backgroundColor: Colors.yellow.shade700,
              backgroundImage: AssetImage('images/staruser.png'), // Replace with the actual path to the user's profile image
            ),
            const SizedBox(height: 16),
            const Text(
              'User Name',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 24),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.edit),
              title: const Text('Edit Profile'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EditProfile()), // Replace YourNextScreen() with the screen you want to navigate to
                );
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.report),
              title: const Text('Report'),
              onTap: () {
                _showReportDialog(context);
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.room_service_sharp),
              title: const Text('Customer Service'),
              onTap: () {
                // Handle edit profile action
              },
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Log Out'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()), // Replace YourNextScreen() with the screen you want to navigate to
                );
              },
            ),
            const Divider(),
          ],
        );
      default:
        return const Center(child: Text('Invalid Tab'));

    }
  }
}

void _showReportDialog(BuildContext context) {
  String reportText = ''; // To store the user's input for the report issue

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.black87,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        title: const Text('Report :',
          style: TextStyle(color: Colors.white),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Please describe the issue:',
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 10),
            TextField(
              onChanged: (value) {
                reportText = value;
              },
              maxLines: 3,
              style:  const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Enter your report here',
                border: const OutlineInputBorder(),
                hintStyle: const TextStyle(color: Colors.white),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
              // Perform the action for reporting here.
              // For example, you can show a success message or trigger an API call to report the content.
              print('Report: $reportText');
            },
            child: const Text('Report',
              style: TextStyle(color: Colors.white),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Cancel',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      );
    },
  );
}




