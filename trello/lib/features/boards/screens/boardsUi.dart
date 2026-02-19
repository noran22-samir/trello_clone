import "package:flutter/material.dart";
import 'package:trello/core/utils/app_colors.dart';

class boardsUi extends StatelessWidget {
  const boardsUi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color.fromARGB(255, 17, 89, 147),
          elevation: 3,
          child: Icon(Icons.search_off_sharp, color: Colors.white),
        ),
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),

          title: Text("Boards Title"),
          actions: [
            Opacity(opacity: 0.4, child: Icon(Icons.sort)),
            Opacity(opacity: 0.4, child: Icon(Icons.notifications)),
            Opacity(opacity: 0.4, child: Icon(Icons.more_vert_rounded)),
          ],
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
      ),
    );
  }
}
