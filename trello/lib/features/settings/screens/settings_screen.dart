import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trello/core/utils/app_colors.dart';
import 'package:trello/core/widget/custom_bottom_bar.dart';
import 'package:trello/core/widget/custom_floating_button.dart';
import 'package:trello/features/settings/cubit/checkbox%20cubit/checkbox_cubit.dart';
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
              const SizedBox(width: 5),
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
              icon: const CircleAvatar(
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
            _buildSectionTitle("Accessibility"),
            _buildCheckboxTile("Color blind friendly", 1),
            _buildCheckboxTile("Enable animations", 2),
            _buildCheckboxTile("Show labels names", 3),
            const Divider(),
            _buildSectionTitle("Sync"),
            const ListTile(
              title: Text("Offline boards"),
              contentPadding: EdgeInsets.zero,
            ),
            const ListTile(
              title: Text("Sync queue"),
              contentPadding: EdgeInsets.zero,
            ),
            const Divider(),
            _buildSectionTitle("General"),
            const ListTile(
              title: Text("Profile and visibility"),
              contentPadding: EdgeInsets.zero,
            ),
            const ListTile(
              title: Text("Create card defaults"),
              contentPadding: EdgeInsets.zero,
            ),
            const ListTile(
              title: Text("Help"),
              contentPadding: EdgeInsets.zero,
            ),
            ListTile(
              title: const Text("Log Out", style: TextStyle(color: Colors.red)),
              contentPadding: EdgeInsets.zero,
              onTap: () {
                _showLogoutDialog(context);
              },
            ),
          ],
        ),
      ),
      floatingActionButton: const CustomFloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const CustomBottomBar(),
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Log Out"),
          content: const Text("Are you sure you want to log out?"),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () async {
                await AuthService().logout();
                if (context.mounted) {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    '/login',
                    (route) => false,
                  );
                }
              },
              child: const Text("Yes, Log Out", style: TextStyle(color: Colors.red)),
            ),
          ],
        );
      },
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

  Widget _buildCheckboxTile(String title, int value) {
    return BlocSelector<CheckboxCubit, CheckboxState, bool>(
      selector: (state) {
        if (value == 1) return state.box1;
        if (value == 2) return state.box2;
        return state.box3;
      },
      builder: (BuildContext context, bool isChecked) {
        return CheckboxListTile(
          title: Text(title),
          value: isChecked,
          onChanged: (val) {
            var cubit = context.read<CheckboxCubit>();
            if (value == 1) cubit.box1();
            if (value == 2) cubit.box2();
            if (value == 3) cubit.box3();
          },
          contentPadding: EdgeInsets.zero,
          controlAffinity: ListTileControlAffinity.trailing,
          activeColor: AppColors.blueMain_buttons,
          checkColor: AppColors.white,
        );
      },
    );
  }
}