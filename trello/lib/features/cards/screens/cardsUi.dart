import 'package:flutter/material.dart';
import 'package:trello/core/widget/custom_bottom_bar.dart';
import 'package:trello/core/widget/custom_floating_button.dart';
import '../../../core/utils/app_colors.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardsScreen extends StatefulWidget {
  const CardsScreen({super.key});

  @override
  State<CardsScreen> createState() => _CardsScreenState();
}

class _CardsScreenState extends State<CardsScreen> {
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
                "My Cards",
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
                Icons.filter_list,
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.watch_later_outlined, color: Colors.grey[600]),
                SizedBox(width: 8),
                Text(
                  "Due Soon",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "show all",
                    style: TextStyle(color: AppColors.blueMain_buttons),
                  ),
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
                                "Document Draft \nfor Directors",
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
                                    right: 25,
                                    child: Image.asset(
                                      "assets/images/Oval3.png",
                                    ),
                                  ),
                                  Positioned(
                                    right: 16,
                                    child: Image.asset(
                                      "assets/images/Oval4.png",
                                    ),
                                  ),
                                  Positioned(
                                    child: Image.asset(
                                      "assets/images/Oval5.png",
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
                                Icons.watch_later_outlined,
                                size: 19,
                                color: Colors.grey[600],
                              ),
                              SizedBox(width: 4),
                              Text(
                                "01 Jun",
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),

                          Text(
                            "Project Proposal in list Doing",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey[700],
                              fontWeight: FontWeight.w600,
                            ),
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
                                "Presentations",
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
                                    right: 25,
                                    child: Image.asset(
                                      "assets/images/Oval3.png",
                                    ),
                                  ),
                                  Positioned(
                                    right: 16,
                                    child: Image.asset(
                                      "assets/images/Oval4.png",
                                    ),
                                  ),
                                  Positioned(
                                    child: Image.asset(
                                      "assets/images/Oval5.png",
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
                                Icons.watch_later_outlined,
                                size: 19,
                                color: Colors.grey[600],
                              ),
                              SizedBox(width: 4),
                              Text(
                                "03 Jun",
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),

                          Text(
                            "Project Proposal in list Doing",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey[700],
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 22),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.watch_later_outlined, color: Colors.grey[600]),
                SizedBox(width: 8),
                Text(
                  "Due Later",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "show all",
                    style: TextStyle(color: AppColors.blueMain_buttons),
                  ),
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
                                "Share Brief",
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
                                    right: 25,
                                    child: Image.asset(
                                      "assets/images/Oval3.png",
                                    ),
                                  ),
                                  Positioned(
                                    right: 16,
                                    child: Image.asset(
                                      "assets/images/Oval4.png",
                                    ),
                                  ),
                                  Positioned(
                                    child: Image.asset(
                                      "assets/images/Oval5.png",
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
                                Icons.watch_later_outlined,
                                size: 19,
                                color: Colors.grey[600],
                              ),
                              SizedBox(width: 4),
                              Text(
                                "04 Jun",
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),

                          Text(
                            "Promotion in list To Do",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey[700],
                              fontWeight: FontWeight.w600,
                            ),
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
                                "Vendor Contacts",
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
                                    right: 25,
                                    child: Image.asset(
                                      "assets/images/Oval3.png",
                                    ),
                                  ),
                                  Positioned(
                                    right: 16,
                                    child: Image.asset(
                                      "assets/images/Oval4.png",
                                    ),
                                  ),
                                  Positioned(
                                    child: Image.asset(
                                      "assets/images/Oval5.png",
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
                                Icons.watch_later_outlined,
                                size: 19,
                                color: Colors.grey[600],
                              ),
                              SizedBox(width: 4),
                              Text(
                                "05 Jun",
                                style: TextStyle(
                                  color: Colors.grey[700],
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 8),

                          Text(
                            "Promotion in list To Do",
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey[700],
                              fontWeight: FontWeight.w600,
                            ),
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
      bottomNavigationBar: const CustomBottomBar(selectedIndex: 2,),
    );
  }
}
