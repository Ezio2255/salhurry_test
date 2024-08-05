import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:salhurry/presentation/settings/settings/widgets/edit_profile_tile.dart';
import 'package:salhurry/presentation/settings/settings/widgets/setting_item.dart';
import 'package:salhurry/presentation/settings/settings/widgets/setting_switch.dart';
import 'package:salhurry/presentation/settings/settings/widgets/settings_noti.dart';
import 'package:salhurry/utilities/constants/const.dart';

class ScreenSettings extends StatefulWidget {
  const ScreenSettings({super.key});

  @override
  State<ScreenSettings> createState() => _ScreenSettingsState();
}

//currently settings is not does perfectly the user's editing is done
class _ScreenSettingsState extends State<ScreenSettings> {
  bool isDarkMode = false;
  bool isNotificationMode = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Settings",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                "Account",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20),
              const SizedBox(
                width: double.infinity,
                //here goes to the profile edit page
                child: WidgetEditProfileTile(),
              ),
              const SizedBox(height: 40),
              const Text(
                "Settings",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(height: 20),
              SettingItem(
                title: "Language",
                icon: Ionicons.earth,
                bgColor: Colors.orange.shade100,
                iconColor: Colors.orange,
                value: "English (Dflt)",
                onTap: () {},
              ),
              const SizedBox(height: 20),
              SettingNotification(
                title: "Notifications",
                icon: Ionicons.notifications,
                bgColor: const Color.fromARGB(95, 33, 149, 243),
                iconColor: Colors.black,
                value: isNotificationMode,
                onTap: (value) {
                  setState(() {
                    isNotificationMode = value;
                  });
                },
              ),
              const SizedBox(height: 20),
              SettingSwitch(
                title: "Dark Mode",
                icon: Ionicons.earth,
                bgColor: Colors.purple.shade100,
                iconColor: Colors.purple,
                value: isDarkMode,
                onTap: (value) {
                  setState(() {
                    isDarkMode = value;
                  });
                },
              ),
              const SizedBox(height: 20),
              SettingItem(
                title: "Help",
                icon: Ionicons.nuclear,
                bgColor: Colors.green.shade100,
                iconColor: Colors.green,
                onTap: () {},
              ),
              const SizedBox(height: 20),
              SettingItem(
                title: "Logout",
                icon: Ionicons.log_out,
                bgColor: Colors.red.shade100,
                iconColor: Colors.red,
                onTap: () {
                  // auth.signOut();
                  Navigator.pushReplacementNamed(context, '/login');
                },
              ),
              const SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 100,
                decoration: BoxDecoration(
                  color: ksecondryLightColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.support_agent,
                        size: 40,
                        color: ksecondryColor,
                      ),
                      SizedBox(width: 10),
                      Text(
                        "This App is Under maintanance",
                        style: TextStyle(
                          fontSize: ksmallFontSize,
                          color: ksecondryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeScreenTest extends StatelessWidget {
  final bool showHorizontalListView = true;

  const HomeScreenTest({super.key, });

  @override
  Widget build(BuildContext context) {
    // Get the screen size
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('List Views Example'),
      ),
      body: Column(
        children: [
          if (showHorizontalListView) 
            SizedBox(
              height: screenSize.height * 0.25, // 25% of the screen height for the horizontal ListView
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      Text('Horizontal List'),
                      Spacer(),
                      Icon(Icons.arrow_forward),
                    ],
                  ),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 100,
                          margin: const EdgeInsets.all(10),
                          color: Colors.red,
                          child: Center(
                            child: Text('Item $index'),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          Expanded(
            child: ListView(
              children: [
                SizedBox(
                  height: screenSize.height * 0.25, // 50% of the screen height for each vertical ListView
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Text('Vertical List 1'),
                          Spacer(),
                          Icon(Icons.arrow_forward),
                        ],
                      ),
                      Expanded(
                        child: ListView.builder(
                                                scrollDirection: Axis.horizontal,

                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 50,
                              margin: const EdgeInsets.all(10),
                              color: Colors.green,
                              child: Center(
                                child: Text('Item $index'),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenSize.height * 0.75, // 50% of the screen height for each vertical ListView
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        children: [
                          Text('Vertical List 2'),
                          Spacer(),
                          Icon(Icons.arrow_forward),
                        ],
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 50,
                              margin: const EdgeInsets.all(10),
                              color: Colors.blue,
                              child: Center(
                                child: Text('Item $index'),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}