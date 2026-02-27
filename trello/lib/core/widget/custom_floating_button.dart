import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trello/core/utils/app_colors.dart';
import 'package:trello/core/widget/controllers/hover%20cubit/cubit/hover_cubit.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({super.key});

  void _showAddMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        TextEditingController workspaceController = TextEditingController();

        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
            top: 20,
            left: 20,
            right: 20,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(
                  Icons.dashboard_customize,
                  color: AppColors.blueMain_buttons,
                ),
                title: Text(
                  "Add Board",
                  style: TextStyle(color: AppColors.black),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/addBoard');
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.group_add,
                  color: AppColors.blueMain_buttons,
                ),
                title: Text(
                  "Add Workspace",
                  style: TextStyle(color: AppColors.black),
                ),
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(20),
                      ),
                    ),
                    builder: (context) {
                      return Padding(
                        padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom,
                          top: 20,
                          left: 20,
                          right: 20,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Create New Workspace",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: AppColors.black,
                              ),
                            ),
                            SizedBox(height: 10),
                            TextField(
                              controller: workspaceController,
                              decoration: InputDecoration(
                                labelText: "Workspace name",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            SizedBox(height: 15),
                            ElevatedButton(
                              onPressed: () {
                                if (workspaceController.text.isNotEmpty) {
                                  Navigator.pop(context);
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        "Workspace '${workspaceController.text}' created!",
                                      ),
                                    ),
                                  );
                                  workspaceController.clear();
                                }
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: AppColors.blueMain_buttons,
                                minimumSize: Size(double.infinity, 50),
                              ),
                              child: Text(
                                "Create",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            SizedBox(height: 10),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.add_to_photos,
                  color: AppColors.blueMain_buttons,
                ),
                title: Text(
                  "Add Card",
                  style: TextStyle(color: AppColors.black),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/addCard');
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HoverCubit(),
      child: BlocBuilder<HoverCubit, HoverState>(
        builder: (BuildContext context, state) {
          return MouseRegion(
            onEnter: (_) {
              // setState(() => _addHoverd = true);
              context.read<HoverCubit>().onEnter();
            },
            onExit: (_) {
              // setState(() => _addHoverd = false);
              context.read<HoverCubit>().onExit();
            },
            child: FloatingActionButton(
              onPressed: () => _showAddMenu(context),
              backgroundColor: state.isHoverd
                  ? AppColors.blueDark_searchButton
                  : AppColors.blueMain_buttons,
              shape: const CircleBorder(),
              child: const Icon(Icons.add, color: Colors.white, size: 30),
            ),
          );
        },
      ),
    );
  }
}
