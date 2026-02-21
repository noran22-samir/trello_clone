import 'package:flutter/material.dart';
import '../../../core/utils/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';
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
          padding: const EdgeInsets.only(top: 9, left: 6),
          child: Row(
            children: [
              Image.asset('assets/images/logo_icon.png', width: 33, height: 33),
              SizedBox(width: 5),
              Text(
                "My Cards",
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
                  icon: Image.asset("assets/images/Filter_list.png"),
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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.watch_later_outlined, color: Colors.grey[600],),
                SizedBox(width: 8),
                Text(
                  "Due Soon",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Spacer(),
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

                          Text("Project Proposal in list Doing", style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w600
                          ),),
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

                          Text("Project Proposal in list Doing", style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w600
                          ),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 22,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.watch_later_outlined, color: Colors.grey[600],),
                SizedBox(width: 8),
                Text(
                  "Due Later",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Spacer(),
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

                         
                          Text("Promotion in list To Do", style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w600
                          ),),
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

                          Text("Promotion in list To Do", style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey[700],
                            fontWeight: FontWeight.w600
                          ),),
                        ],
                      ),
                    ),
                  ),
                ],
              ),),
          ],
        ),
      ),
    );
  }
}
