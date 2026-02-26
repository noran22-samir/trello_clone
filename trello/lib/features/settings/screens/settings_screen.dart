import 'package:flutter/material.dart';
import 'package:trello/core/utils/app_colors.dart';
import 'package:trello/core/widget/custom_bottom_bar.dart';
import 'package:trello/core/widget/custom_floating_button.dart';
import 'package:trello/services/auth_service.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

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
              onTap: () async {
                await AuthService().logout();
                if (context.mounted) {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    '/login',
                    (route) => false,
                  );
                }
              },
            ),
          ],
        ),
      ),
      floatingActionButton: const CustomFloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const CustomBottomBar(selectedIndex: 3,),
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
