import 'package:flutter/material.dart';
import 'package:trello/core/utils/app_colors.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _addHoverd = false;
  int _selectedIndex = 3;

  void _showAddMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(
                  Icons.dashboard_customize,
                  color: AppColors.blueMain_buttons,
                ),
                title: Text(
                  "Add Board",
                  style: TextStyle(color: AppColors.black),
                ),
                onTap: () {
                  Navigator.pop(context);
                  // Navigator.pushNamed(context, '/add_board');
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.group_add,
                  color: AppColors.blueMain_buttons,
                ),
                title: Text(
                  "Add Workspace",
                  style: TextStyle(color: AppColors.black),
                ),
                onTap: () {
                  Navigator.pop(context);
                  // Navigator.pushNamed(context, '/add_board');
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.add_to_photos,
                  color: AppColors.blueMain_buttons,
                ),
                title: Text(
                  "Add Card",
                  style: TextStyle(color: AppColors.black),
                ),
                onTap: () {
                  Navigator.pop(context);
                  // Navigator.pushNamed(context, '/add_board');
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: const EdgeInsets.only(top: 9),
          child: Row(
            children: [
              Image.asset("assets/images/logo_icon.png", width: 33, height: 33),
              SizedBox(width: 5),
              const Text(
                "Settings",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 9),
            child: IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                radius: 17,
                backgroundImage: NetworkImage(
                  "https://avatars.githubusercontent.com/u/110792649?v=4",
                ),
              ),
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Container(color: Colors.grey[300], height: 1),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle("Notifications"),
            ListTile(
              title: const Text("Open system settings"),
              contentPadding: EdgeInsets.zero,
              onTap: () {},
            ),
            const Divider(),
            _buildSectionTitle("Theme"),
            ListTile(
              title: const Text("Choose theme"),
              contentPadding: EdgeInsets.zero,
              onTap: () {},
            ),
            const Divider(),
            _buildSectionTitle("Accessibility"),
            _buildCheckboxTile("Color blind friendly", false),
            _buildCheckboxTile("Enable animations", false),
            _buildCheckboxTile("Show labels names", false),
            const Divider(),
            _buildSectionTitle("Sync"),
            ListTile(
              title: const Text("Offline boards"),
              contentPadding: EdgeInsets.zero,
            ),
            ListTile(
              title: const Text("Sync queue"),
              contentPadding: EdgeInsets.zero,
            ),
            const Divider(),
            _buildSectionTitle("General"),
            ListTile(
              title: const Text("Profile and visibility"),
              contentPadding: EdgeInsets.zero,
            ),
            ListTile(
              title: const Text("Create card defaults"),
              contentPadding: EdgeInsets.zero,
            ),
            ListTile(
              title: const Text("Help"),
              contentPadding: EdgeInsets.zero,
            ),
            ListTile(
              title: const Text("Log Out", style: TextStyle(color: Colors.red)),
              contentPadding: EdgeInsets.zero,
              onTap: () {},
            ),
          ],
        ),
      ),
      floatingActionButton: MouseRegion(
        onEnter: (_) {
          setState(() => _addHoverd = true);
        },
        onExit: (_) {
          setState(() => _addHoverd = false);
        },
        child: FloatingActionButton(
          onPressed: () => _showAddMenu(context),
          backgroundColor: _addHoverd
              ? AppColors.blueDark_searchButton
              : AppColors.blueMain_buttons,
          shape: const CircleBorder(),
          child: const Icon(Icons.add, color: Colors.white, size: 30),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: ClipRRect(
        child: BottomAppBar(
          height: 89,
          elevation: 20,
          color: const Color.fromARGB(234, 243, 242, 242),
          notchMargin: 8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      setState(() => _selectedIndex = 0);
                      Navigator.pushNamed(context, "/home");
                    },
                    constraints: const BoxConstraints(),
                    icon: Icon(
                      Icons.home_rounded,
                      size: 24,
                      color: _selectedIndex == 0
                          ? AppColors.blueMain_buttons
                          : AppColors.black.withOpacity(0.4),
                    ),
                  ),
                  Text(
                    "Boards",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: _selectedIndex == 0
                          ? AppColors.blueMain_buttons
                          : AppColors.black.withOpacity(0.4),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      setState(() => _selectedIndex = 1);
                    },
                    constraints: const BoxConstraints(),
                    icon: Icon(
                      Icons.people_outline,
                      size: 24,
                      color: _selectedIndex == 1
                          ? AppColors.blueMain_buttons
                          : AppColors.black.withOpacity(0.4),
                    ),
                  ),
                  Text(
                    "Workspaces",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: _selectedIndex == 1
                          ? AppColors.blueMain_buttons
                          : AppColors.black.withOpacity(0.4),
                    ),
                  ),
                ],
              ),
              const SizedBox(width: 40),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      setState(() => _selectedIndex = 2);
                    },
                    constraints: const BoxConstraints(),
                    icon: Icon(
                      Icons.chat_bubble_outline_rounded,
                      size: 24,
                      color: _selectedIndex == 2
                          ? AppColors.blueMain_buttons
                          : AppColors.black.withOpacity(0.4),
                    ),
                  ),
                  Text(
                    "Cards",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: _selectedIndex == 2
                          ? AppColors.blueMain_buttons
                          : AppColors.black.withOpacity(0.4),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      setState(() => _selectedIndex = 3);
                      Navigator.pushNamed(context, "/settings", arguments: 3);
                    },
                    constraints: const BoxConstraints(),
                    icon: Icon(
                      Icons.settings,
                      size: 24,
                      color: _selectedIndex == 3
                          ? AppColors.blueMain_buttons
                          : AppColors.black.withOpacity(0.4),
                    ),
                  ),
                  Text(
                    "Settings",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: _selectedIndex == 3
                          ? AppColors.blueMain_buttons
                          : AppColors.black.withOpacity(0.4),
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

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 5),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 13,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  Widget _buildCheckboxTile(String title, bool value) {
    return CheckboxListTile(
      title: Text(title),
      value: value,
      onChanged: (val) {},
      contentPadding: EdgeInsets.zero,
      controlAffinity: ListTileControlAffinity.trailing,
    );
  }
}
