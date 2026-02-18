import 'package:flutter/material.dart';
import 'package:trello/core/utils/app_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _addHoverd = false;
  int _selectedIndex = 0;
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
                "Boards",
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
              icon: Icon(
                Icons.search,
                color: AppColors.black.withOpacity(0.4),
                size: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 9),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications_none,
                color: AppColors.black.withOpacity(0.4),
                size: 20,
              ),
            ),
          ),
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
      body: ListView(
        
      ),
      floatingActionButton: MouseRegion(
        onEnter: (_) {
          setState(() => _addHoverd = true);
        },
        onExit: (_) {
          setState(() => _addHoverd = false);
        },
        child: FloatingActionButton(
          onPressed: () {
            // setState(() {
            //   _addHoverd = !_addHoverd;
            // });
          },
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
          height: 68,
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
