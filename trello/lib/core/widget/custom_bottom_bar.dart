import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trello/core/utils/app_colors.dart';
import 'package:trello/core/widget/controllers/bottomBar%20cubit/cubit/bottom_bar_cubit.dart';

class CustomBottomBar extends StatelessWidget {
  const CustomBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomBarCubit, BottomBarState>(
      builder: (BuildContext context, state) {
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
                        context.read<BottomBarCubit>().changePage(0);
                        Navigator.pushReplacementNamed(context, "/home");
                      },
                      constraints: const BoxConstraints(),
                      icon: Icon(
                        Icons.home_rounded,
                        size: 24,
                        color: state.selectedIcon == 0
                            ? AppColors.blueMain_buttons
                            : AppColors.black.withOpacity(0.4),
                      ),
                    ),
                    Text(
                      "Boards",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: state.selectedIcon == 0
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
                        context.read<BottomBarCubit>().changePage(1);
                        Navigator.pushReplacementNamed(
                          context,
                          "/workspaceScreen",
                        );
                      },
                      constraints: const BoxConstraints(),
                      icon: Icon(
                        Icons.people_outline,
                        size: 24,
                        color: state.selectedIcon == 1
                            ? AppColors.blueMain_buttons
                            : AppColors.black.withOpacity(0.4),
                      ),
                    ),
                    Text(
                      "Workspaces",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: state.selectedIcon == 1
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
                        context.read<BottomBarCubit>().changePage(2);
                        Navigator.pushReplacementNamed(context, "/cardsScreen");
                      },
                      constraints: const BoxConstraints(),
                      icon: Icon(
                        Icons.chat_bubble_outline_rounded,
                        size: 24,
                        color: state.selectedIcon == 2
                            ? AppColors.blueMain_buttons
                            : AppColors.black.withOpacity(0.4),
                      ),
                    ),
                    Text(
                      "Cards",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: state.selectedIcon == 2
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
                        context.read<BottomBarCubit>().changePage(3);
                        Navigator.pushReplacementNamed(context, "/settings");
                      },
                      constraints: const BoxConstraints(),
                      icon: Icon(
                        Icons.settings,
                        size: 24,
                        color: state.selectedIcon == 3
                            ? AppColors.blueMain_buttons
                            : AppColors.black.withOpacity(0.4),
                      ),
                    ),
                    Text(
                      "Settings",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: state.selectedIcon == 3
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
      },
    );
  }
}
