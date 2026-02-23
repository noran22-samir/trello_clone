import 'package:flutter/material.dart';
import 'package:trello/core/utils/app_colors.dart';

class RecentScreen extends StatefulWidget {
  const RecentScreen({super.key});

  @override
  State<RecentScreen> createState() => _RecentScreenState();
}

class _RecentScreenState extends State<RecentScreen> {
  bool _addHoverd = false;

  int _selectedIndex = 0;

  final List<Map<String, dynamic>> _data = [
    {"title": "Project Alpha", "workspace": 2, "lists": 5, "cards": 20},
    {"title": "Marketing Campaign", "workspace": 1, "lists": 3, "cards": 15},
    {"title": "Product Launch", "workspace": 3, "lists": 4, "cards": 10},
    {"title": "Design Sprint", "workspace": 5, "lists": 6, "cards": 25},
    {"title": "Event Planning", "workspace": 2, "lists": 2, "cards": 8},
    {"title": "Customer Support", "workspace": 4, "lists": 7, "cards": 30},
    {"title": "HR Onboarding", "workspace": 1, "lists": 3, "cards": 12},
  ];
  void _showAddMenu (BuildContext context){
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Padding(padding:   const EdgeInsets.symmetric(vertical: 20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(Icons.dashboard_customize,color: AppColors.blueMain_buttons,),
                title: Text("Add Board",style: TextStyle(color: AppColors.black),),
                onTap: () {
                  Navigator.pop(context);
                  // Navigator.pushNamed(context, '/add_board');
                },
              ),
              ListTile(
                leading: Icon(Icons.group_add,color: AppColors.blueMain_buttons,),
                title: Text("Add Workspace",style: TextStyle(color: AppColors.black),),
                onTap: () {
                  Navigator.pop(context);
                  // Navigator.pushNamed(context, '/add_board');
                },
              ),
              ListTile(
                leading: Icon(Icons.add_to_photos,color: AppColors.blueMain_buttons,),
                title: Text("Add Card",style: TextStyle(color: AppColors.black),),
                onTap: () {
                  Navigator.pop(context);
                  // Navigator.pushNamed(context, '/add_board');
                },
              ),
            ],
          ),
        );
      }
      );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 9),
          child: Row(
            children: [
              Image.asset("assets/images/logo_icon.png", width: 33, height: 33),
              SizedBox(width: 5),
              const Text(
                "Recent Boards",
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
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: SizedBox(
          height: double.infinity,
          child: ListView.builder(
            itemCount: 20,
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
