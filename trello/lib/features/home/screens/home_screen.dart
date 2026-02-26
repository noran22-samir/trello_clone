import 'package:flutter/material.dart';
import 'package:trello/core/utils/app_colors.dart';
import 'package:trello/core/widget/custom_bottom_bar.dart';
import 'package:trello/core/widget/custom_floating_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Map<String, dynamic>> _data = [
    {"title": "Project Alpha", "workspace": 2, "lists": 5, "cards": 20},
    {"title": "Marketing Campaign", "workspace": 1, "lists": 3, "cards": 15},
    {"title": "Product Launch", "workspace": 3, "lists": 4, "cards": 10},
    {"title": "Design Sprint", "workspace": 5, "lists": 6, "cards": 25},
    {"title": "Event Planning", "workspace": 2, "lists": 2, "cards": 8},
    {"title": "Customer Support", "workspace": 4, "lists": 7, "cards": 30},
    {"title": "HR Onboarding", "workspace": 1, "lists": 3, "cards": 12},
  ];

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
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            Row(
              children: [
                Text(
                  "Favourite",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black,
                  ),
                ),
                Spacer(),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/favScreen');
                    },
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "show all",
                        style: TextStyle(color: AppColors.blueMain_buttons),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 3),
            SizedBox(
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                itemBuilder: (context, index) {
                  final item = _data[index % _data.length];
                  final containerColor = index % 2 == 0
                      ? AppColors.blueSky_card
                      : AppColors.lightGreen_card;
                  return Container(
                    width: 250,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: containerColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                item['title'],
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.black,
                                ),
                              ),
                              SizedBox(
                                width: 62,
                                height: 30,
                                child: Stack(
                                  children: List.generate(
                                    item['workspace'] > 3
                                        ? 4
                                        : item['workspace'],
                                    (imgIndex) {
                                      return Positioned(
                                        left: imgIndex * 12.0,

                                        child: CircleAvatar(
                                          radius: 14,

                                          backgroundImage: (imgIndex < 3)
                                              ? NetworkImage(
                                                  "https://picsum.photos/100?sig=${index + imgIndex}",
                                                )
                                              : null,
                                          child:
                                              (imgIndex == 3 &&
                                                  item['workspace'] > 3)
                                              ? Center(
                                                  child: Text(
                                                    "+${item['workspace'] - 3}",
                                                    style: TextStyle(
                                                      fontSize: 9,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: AppColors
                                                          .blueMain_buttons,
                                                    ),
                                                  ),
                                                )
                                              : null,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 18),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18),
                          child: Row(
                            children: [
                              Icon(
                                Icons.people,
                                size: 16,
                                color: AppColors.black.withOpacity(0.3),
                              ),
                              SizedBox(width: 5),
                              Text(
                                "Workspace ${item['workspace']}",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: AppColors.black.withOpacity(0.7),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 25),
                        Divider(height: 1),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "${item['lists']} Lists",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.black.withOpacity(0.7),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 39,
                                width: 1,
                                color: AppColors.black.withOpacity(0.3),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      "${item['cards']} Cards",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.black.withOpacity(0.7),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  "Recent",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black,
                  ),
                ),
                Spacer(),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/recentScreen');
                    },
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "show all",
                        style: TextStyle(color: AppColors.blueMain_buttons),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 3),
            SizedBox(
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                itemBuilder: (context, index) {
                  final item = _data[index % _data.length];
                  final containerColor = index % 2 == 0
                      ? AppColors.lightOrange_card
                      : AppColors.lightRed_card;
                  return Container(
                    width: 250,
                    margin: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: containerColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                item['title'],
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.black,
                                ),
                              ),
                              SizedBox(
                                width: 62,
                                height: 30,
                                child: Stack(
                                  children: List.generate(
                                    item['workspace'] > 3
                                        ? 4
                                        : item['workspace'],
                                    (imgIndex) {
                                      return Positioned(
                                        left: imgIndex * 12.0,

                                        child: CircleAvatar(
                                          radius: 14,

                                          backgroundImage: (imgIndex < 3)
                                              ? NetworkImage(
                                                  "https://picsum.photos/100?sig=${index + imgIndex}",
                                                )
                                              : null,
                                          child:
                                              (imgIndex == 3 &&
                                                  item['workspace'] > 3)
                                              ? Center(
                                                  child: Text(
                                                    "+${item['workspace'] - 3}",
                                                    style: TextStyle(
                                                      fontSize: 9,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: AppColors
                                                          .blueMain_buttons,
                                                    ),
                                                  ),
                                                )
                                              : null,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 18),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 18),
                          child: Row(
                            children: [
                              Icon(
                                Icons.people,
                                size: 16,
                                color: AppColors.black.withOpacity(0.3),
                              ),
                              SizedBox(width: 5),
                              Text(
                                "Workspace ${item['workspace']}",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: AppColors.black.withOpacity(0.7),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 25),
                        Divider(height: 1),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 15),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      "${item['lists']} Lists",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.black.withOpacity(0.7),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                height: 39,
                                width: 1,
                                color: AppColors.black.withOpacity(0.3),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(right: 15),
                                  child: Align(
                                    alignment: Alignment.centerRight,
                                    child: Text(
                                      "${item['cards']} Cards",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: AppColors.black.withOpacity(0.7),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  "Personal",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: AppColors.black,
                  ),
                ),
                Spacer(),
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/personalScreen');
                    },
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "show all",
                        style: TextStyle(color: AppColors.blueMain_buttons),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 3),

            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                final item = _data[index % _data.length];
                final containerColor = index % 2 == 0
                    ? AppColors.lightPurple_card
                    : AppColors.skyBlue_card;
                return Container(
                  width: 250,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: containerColor,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              item['title'],
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: AppColors.black,
                              ),
                            ),
                            SizedBox(
                              width: 62,
                              height: 30,
                              child: Stack(
                                children: List.generate(
                                  item['workspace'] > 3 ? 4 : item['workspace'],
                                  (imgIndex) {
                                    return Positioned(
                                      left: imgIndex * 12.0,

                                      child: CircleAvatar(
                                        radius: 14,

                                        backgroundImage: (imgIndex < 3)
                                            ? NetworkImage(
                                                "https://picsum.photos/100?sig=${index + imgIndex}",
                                              )
                                            : null,
                                        child:
                                            (imgIndex == 3 &&
                                                item['workspace'] > 3)
                                            ? Center(
                                                child: Text(
                                                  "+${item['workspace'] - 3}",
                                                  style: TextStyle(
                                                    fontSize: 9,
                                                    fontWeight: FontWeight.bold,
                                                    color: AppColors
                                                        .blueMain_buttons,
                                                  ),
                                                ),
                                              )
                                            : null,
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 18),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        child: Row(
                          children: [
                            Icon(
                              Icons.people,
                              size: 16,
                              color: AppColors.black.withOpacity(0.3),
                            ),
                            SizedBox(width: 5),
                            Text(
                              "Workspace ${item['workspace']}",
                              style: TextStyle(
                                fontSize: 12,
                                color: AppColors.black.withOpacity(0.7),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 25),
                      Divider(height: 1),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 15),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "${item['lists']} Lists",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.black.withOpacity(0.7),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 39,
                              width: 1,
                              color: AppColors.black.withOpacity(0.3),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(right: 15),
                                child: Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "${item['cards']} Cards",
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.black.withOpacity(0.7),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: const CustomFloatingButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const CustomBottomBar(selectedIndex: 0),
    );
  }
}
