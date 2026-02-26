//workspace
import 'package:flutter/material.dart';
import 'package:trello/core/widget/custom_bottom_bar.dart';
import 'package:trello/core/widget/custom_floating_button.dart';
import '../../../core/utils/app_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WorkspaceScreen extends StatefulWidget {
  const WorkspaceScreen({super.key});

  @override
  State<WorkspaceScreen> createState() => _WorkspaceScreenState();
}

class _WorkspaceScreenState extends State<WorkspaceScreen> {

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
                "Workspace",
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
                  child: Text("show all", style: TextStyle(color: AppColors.blueMain_buttons)),
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
                  child: Text("show all", style: TextStyle(color: AppColors.blueMain_buttons)),
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
                  child: Text("show all", style: TextStyle(color: AppColors.blueMain_buttons)),
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
      floatingActionButton: const CustomFloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const CustomBottomBar(selectedIndex: 1,),
    );
  }
}
