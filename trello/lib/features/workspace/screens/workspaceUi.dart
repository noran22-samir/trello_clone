//workspace
import 'package:flutter/material.dart';
import '../../../core/utils/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WorkspaceScreen extends StatefulWidget {
  const WorkspaceScreen({super.key});

  @override
  State<WorkspaceScreen> createState() => _WorkspaceScreenState();
}

class _WorkspaceScreenState extends State<WorkspaceScreen> {
  bool _addHoverd = false;
  int _selectedIndex = 0;

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
          padding: const EdgeInsets.only(top: 9, left: 6),
          child: Row(
            children: [
              Image.asset('assets/images/logo_icon.png', width: 33, height: 33),
              SizedBox(width: 5),
              Text(
                "Workspaces",
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(top: 9, right: 6),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset("assets/images/search-outline.png"),
                ),
                SizedBox(width: 2),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset("assets/images/search-outline.png"),
                ),
                SizedBox(width: 8),
                GestureDetector(
                  onTap: () {
                    print("KK");
                  },
                  child: Image.asset('assets/images/User.png'),
                ),
              ],
            ),
          ),
          Divider(),
        ],
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1),
          child: Container(color: Colors.grey[300], height: 1),
        ),
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.all(25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Workspaces 1",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("show all", style: TextStyle(color: Colors.blue)),
                ),
              ],
            ),
            SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  //! first card
                  Container(
                    width: 270,
                    height: 170,
                    decoration: BoxDecoration(
                      color: AppColors.blueSky_card,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Choose Linux or \nWindows?",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Spacer(),
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Positioned(
                                    right: 16,
                                    child: Image.asset(
                                      "assets/images/Oval1.png",
                                    ),
                                  ),
                                  Positioned(
                                    child: Image.asset(
                                      "assets/images/Oval2.png",
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Spacer(),
                          Row(
                            children: [
                              FaIcon(
                                Icons.people,
                                size: 19,
                                color: Colors.grey[400],
                              ),
                              SizedBox(width: 4),
                              Text(
                                "Workspaces 1",
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Divider(thickness: 1),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "6 lists",
                                style: TextStyle(color: Colors.grey[600]),
                              ),
                              Text(
                                "30 cards",
                                style: TextStyle(color: Colors.grey[600]),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(width: 20),
                  //! seconed card
                  Container(
                    width: 270,
                    height: 170,
                    decoration: BoxDecoration(
                      color: AppColors.blueSky_card,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Positive Actions",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Spacer(),
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Positioned(
                                    right: 16,
                                    child: Image.asset(
                                      "assets/images/Oval1.png",
                                    ),
                                  ),
                                  Positioned(
                                    child: Image.asset(
                                      "assets/images/Oval2.png",
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Spacer(),
                          Row(
                            children: [
                              FaIcon(
                                Icons.people,
                                size: 19,
                                color: Colors.grey[400],
                              ),
                              SizedBox(width: 4),
                              Text(
                                "Workspaces 3",
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Divider(thickness: 1),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "4 lists",
                                style: TextStyle(color: Colors.grey[600]),
                              ),
                              Text(
                                "30 cards",
                                style: TextStyle(color: Colors.grey[600]),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Workspaces 2",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("show all", style: TextStyle(color: Colors.blue)),
                ),
              ],
            ),
            SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  //! first card
                  Container(
                    width: 270,
                    height: 170,
                    decoration: BoxDecoration(
                      color: AppColors.lightRed_card,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Be Open Minded",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Spacer(),
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Positioned(
                                    right: 40,
                                    child: Image.asset(
                                      "assets/images/Oval3.png",
                                    ),
                                  ),
                                  Positioned(
                                    right: 30,
                                    child: Image.asset(
                                      "assets/images/Oval4.png",
                                    ),
                                  ),
                                  Positioned(
                                    right: 15,
                                    child: Image.asset(
                                      "assets/images/Oval5.png",
                                    ),
                                  ),
                                  Stack(
                                    children: [
                                      Image.asset("assets/images/Oval6.png"),
                                      Positioned(
                                        top: 6,
                                        bottom: 0,
                                        left: 6,
                                        child: Text(
                                          "+13",
                                          style: TextStyle(
                                            fontSize: 8,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Spacer(),
                          Row(
                            children: [
                              FaIcon(
                                Icons.people,
                                size: 19,
                                color: Colors.grey[400],
                              ),
                              SizedBox(width: 4),
                              Text(
                                "Workspaces 1",
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Divider(thickness: 1),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "6 lists",
                                style: TextStyle(color: Colors.grey[600]),
                              ),
                              Text(
                                "30 cards",
                                style: TextStyle(color: Colors.grey[600]),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(width: 20),

                  //! seconed card
                  Container(
                    width: 270,
                    height: 170,
                    decoration: BoxDecoration(
                      color: AppColors.lightRed_card,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Row(
                            children: [
                              Text(
                                "Be Open Minded",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Spacer(),
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Positioned(
                                    right: 40,
                                    child: Image.asset(
                                      "assets/images/Oval3.png",
                                    ),
                                  ),
                                  Positioned(
                                    right: 30,
                                    child: Image.asset(
                                      "assets/images/Oval4.png",
                                    ),
                                  ),
                                  Positioned(
                                    right: 15,
                                    child: Image.asset(
                                      "assets/images/Oval5.png",
                                    ),
                                  ),
                                  Stack(
                                    children: [
                                      Image.asset("assets/images/Oval6.png"),
                                      Positioned(
                                        top: 6,
                                        bottom: 0,
                                        left: 6,
                                        child: Text(
                                          "+13",
                                          style: TextStyle(
                                            fontSize: 8,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Spacer(),
                          Row(
                            children: [
                              FaIcon(
                                Icons.people,
                                size: 19,
                                color: Colors.grey[400],
                              ),
                              SizedBox(width: 4),
                              Text(
                                "Workspaces 1",
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Divider(thickness: 1),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "6 lists",
                                style: TextStyle(color: Colors.grey[600]),
                              ),
                              Text(
                                "30 cards",
                                style: TextStyle(color: Colors.grey[600]),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Workspaces 3",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text("show all", style: TextStyle(color: Colors.blue)),
                ),
              ],
            ),
            SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  //! first card
                  Container(
                    width: 270,
                    height: 170,
                    decoration: BoxDecoration(
                      color: AppColors.lightPurple_card,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Gain Skills",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Spacer(),
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Positioned(
                                    right: 40,
                                    child: Image.asset(
                                      "assets/images/Oval3.png",
                                    ),
                                  ),
                                  Positioned(
                                    right: 30,
                                    child: Image.asset(
                                      "assets/images/Oval4.png",
                                    ),
                                  ),
                                  Positioned(
                                    right: 15,
                                    child: Image.asset(
                                      "assets/images/Oval5.png",
                                    ),
                                  ),
                                  Stack(
                                    children: [
                                      Image.asset("assets/images/Oval6.png"),
                                      Positioned(
                                        top: 6,
                                        bottom: 0,
                                        left: 6,
                                        child: Text(
                                          "+13",
                                          style: TextStyle(
                                            fontSize: 8,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Spacer(),
                          Row(
                            children: [
                              FaIcon(
                                Icons.people,
                                size: 19,
                                color: Colors.grey[400],
                              ),
                              SizedBox(width: 4),
                              Text(
                                "Workspaces 4",
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Divider(thickness: 1),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "7 lists",
                                style: TextStyle(color: Colors.grey[600]),
                              ),
                              Text(
                                "35 cards",
                                style: TextStyle(color: Colors.grey[600]),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(width: 20),

                  //! seconed card
                  Container(
                    width: 270,
                    height: 170,
                    decoration: BoxDecoration(
                      color: AppColors.lightGreen_card,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [
                          Row(
                            children: [
                              Text(
                                "Spirits",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                              Spacer(),
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Positioned(
                                    right: 40,
                                    child: Image.asset(
                                      "assets/images/Oval3.png",
                                    ),
                                  ),
                                  Positioned(
                                    right: 30,
                                    child: Image.asset(
                                      "assets/images/Oval4.png",
                                    ),
                                  ),
                                  Positioned(
                                    right: 15,
                                    child: Image.asset(
                                      "assets/images/Oval5.png",
                                    ),
                                  ),
                                  Stack(
                                    children: [
                                      Image.asset("assets/images/Oval6.png"),
                                      Positioned(
                                        top: 6,
                                        bottom: 0,
                                        left: 6,
                                        child: Text(
                                          "+13",
                                          style: TextStyle(
                                            fontSize: 8,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Spacer(),
                          Row(
                            children: [
                              FaIcon(
                                Icons.people,
                                size: 19,
                                color: Colors.grey[400],
                              ),
                              SizedBox(width: 4),
                              Text(
                                "Workspaces 2",
                                style: TextStyle(
                                  color: Colors.grey[600],
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),
                          Divider(thickness: 1),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "10 lists",
                                style: TextStyle(color: Colors.grey[600]),
                              ),
                              Text(
                                "35 cards",
                                style: TextStyle(color: Colors.grey[600]),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
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
                      Navigator.pushNamed(context, "/workspaceScreen");
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
                      Navigator.pushNamed(context, "/cardsScreen");
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
                      Navigator.pushNamed(context, "/settings");
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
}
