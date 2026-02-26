import 'package:flutter/material.dart';
import 'package:trello/core/utils/app_colors.dart';

class CustomBottomBar extends StatefulWidget {
  final int selectedIndex;
  const CustomBottomBar({super.key, required this.selectedIndex});

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: BottomAppBar(
        height: 89,
        elevation: 20,
        shape: const CircularNotchedRectangle(),
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
                    Navigator.pushReplacementNamed(context, "/home");
                  },
                  constraints: const BoxConstraints(),
                  icon: Icon(
                    Icons.home_rounded,
                    size: 24,
                    color: widget.selectedIndex == 0
                        ? AppColors.blueMain_buttons
                        : AppColors.black.withOpacity(0.4),
                  ),
                ),
                Text(
                  "Boards",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: widget.selectedIndex == 0
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
                    Navigator.pushReplacementNamed(context, "/workspaceScreen");
                  },
                  constraints: const BoxConstraints(),
                  icon: Icon(
                    Icons.people_outline,
                    size: 24,
                    color: widget.selectedIndex == 1
                        ? AppColors.blueMain_buttons
                        : AppColors.black.withOpacity(0.4),
                  ),
                ),
                Text(
                  "Workspaces",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: widget.selectedIndex == 1
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
                    Navigator.pushReplacementNamed(context, "/cardsScreen");
                  },
                  constraints: const BoxConstraints(),
                  icon: Icon(
                    Icons.chat_bubble_outline_rounded,
                    size: 24,
                    color: widget.selectedIndex == 2
                        ? AppColors.blueMain_buttons
                        : AppColors.black.withOpacity(0.4),
                  ),
                ),
                Text(
                  "Cards",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: widget.selectedIndex == 2
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
                    Navigator.pushReplacementNamed(context, "/settings");
                  },
                  constraints: const BoxConstraints(),
                  icon: Icon(
                    Icons.settings,
                    size: 24,
                    color: widget.selectedIndex == 3
                        ? AppColors.blueMain_buttons
                        : AppColors.black.withOpacity(0.4),
                  ),
                ),
                Text(
                  "Settings",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: widget.selectedIndex == 3
                        ? AppColors.blueMain_buttons
                        : AppColors.black.withOpacity(0.4),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
