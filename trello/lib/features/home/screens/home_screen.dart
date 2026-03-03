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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Divider(height: 1, thickness: 1),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Opacity(opacity: 0.4, child: Icon(Icons.favorite_border)),
                  Container(height: 18, child: VerticalDivider(thickness: 1)),
                  Opacity(opacity: 0.4, child: Icon(Icons.public)),
                  Opacity(opacity: 0.4, child: Text("Public")),
                  Container(height: 18, child: VerticalDivider(thickness: 1)),
                  Opacity(opacity: 0.4, child: Icon(Icons.lock_outlined)),
                  Spacer(flex: 1),

                  SizedBox(
                    width: 120,
                    height: 36,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          child: CircleAvatar(
                            radius: 16,
                            backgroundColor: Colors.pink,
                          ),
                        ),

                        Positioned(
                          left: 22,
                          child: CircleAvatar(
                            radius: 16,
                            backgroundColor: Color(0xffa18a92),
                          ),
                        ),

                        Positioned(
                          left: 44,
                          child: CircleAvatar(
                            radius: 16,
                            backgroundColor: Color(0xff242323),
                          ),
                        ),

                        Positioned(
                          left: 66,
                          child: CircleAvatar(
                            radius: 16,
                            backgroundColor: Colors.black,
                            child: Text(
                              "+16",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Container(
              child: Card(
                child: ListTile(
                  title: Text(
                    "Design",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.more_horiz),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 7,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 14, 134, 232),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          SizedBox(width: 6),
                          Container(
                            width: 40,
                            height: 7,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 255, 205, 54),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          SizedBox(width: 6),
                          Container(
                            width: 40,
                            height: 7,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 227, 41, 28),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ],
                      ),
                      ListTile(
                        title: Text(
                          "Home business advertising ideas",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          "Successful businesses know the importance of building and maintaining...",
                        ),
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 16,
                            backgroundColor: Colors.black,
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 18,
                            ),
                          ),
                          Row(
                            children: [
                              Opacity(opacity: 0.4, child: Text("76")),
                              Opacity(
                                opacity: 0.4,
                                child: Icon(Icons.insert_comment_outlined),
                              ),
                              SizedBox(width: 6),

                              Opacity(opacity: 0.4, child: Text("25")),
                              Opacity(
                                opacity: 0.4,
                                child: Icon(Icons.favorite_border_rounded),
                              ),
                              SizedBox(width: 5),
                              Opacity(opacity: 0.4, child: Text("12")),
                              Opacity(
                                opacity: 0.4,
                                child: Icon(Icons.attach_file_sharp),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //////////////////////
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 7,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 110, 11, 167),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          SizedBox(width: 6),
                          Container(
                            width: 40,
                            height: 7,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 19, 201, 225),
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          SizedBox(width: 6),
                        ],
                      ),
                      Image.asset(
                        "assets/images/cardphoto.jpg",
                        fit: BoxFit.cover,
                      ),
                      ListTile(
                        title: Text(
                          "Unmatched toner cartridge quality 20 less than oem price",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          "Why read motivational sayings? For motivation! You might need a bit, if you can use last year's list of goals this year because it's as good as new",
                        ),
                      ),
                      SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 120,
                            height: 36,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  child: CircleAvatar(
                                    radius: 16,
                                    backgroundColor: Colors.pink,
                                  ),
                                ),

                                Positioned(
                                  left: 22,
                                  child: CircleAvatar(
                                    radius: 16,
                                    backgroundColor: Color(0xffa18a92),
                                  ),
                                ),

                                Positioned(
                                  left: 44,
                                  child: CircleAvatar(
                                    radius: 16,
                                    backgroundColor: Color(0xff242323),
                                  ),
                                ),

                                Positioned(
                                  left: 66,
                                  child: CircleAvatar(
                                    radius: 16,
                                    backgroundColor: Colors.black,
                                    child: CircleAvatar(
                                      radius: 16,
                                      backgroundColor: Colors.black,
                                      child: Icon(
                                        Icons.add,
                                        color: Colors.white,
                                        size: 18,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Opacity(opacity: 0.4, child: Text("76")),
                              Opacity(
                                opacity: 0.4,
                                child: Icon(Icons.insert_comment_outlined),
                              ),
                              SizedBox(width: 6),

                              Opacity(opacity: 0.4, child: Text("25")),
                              Opacity(
                                opacity: 0.4,
                                child: Icon(Icons.favorite_border_rounded),
                              ),
                              SizedBox(width: 5),
                              Opacity(opacity: 0.4, child: Text("12")),
                              Opacity(
                                opacity: 0.4,
                                child: Icon(Icons.attach_file_sharp),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
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
