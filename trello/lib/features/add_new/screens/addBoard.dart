import 'package:flutter/material.dart';
import 'package:trello/core/utils/app_colors.dart';

class AddBoardScreen extends StatefulWidget {
  const AddBoardScreen({super.key});

  @override
  State<AddBoardScreen> createState() => _AddBoardScreenState();
}

class _AddBoardScreenState extends State<AddBoardScreen> {
  final TextEditingController _boardNameController = TextEditingController();
  String selectedWorkspace = 'Workspace 1';
  String selectedVisibility = 'Private';

  final List<String> workspaces = ['Workspace 1', 'Workspace 2', 'Workspace 3'];
  final List<String> visibilityOptions = ['Private', 'Public'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back, color: AppColors.white),
        ),
        backgroundColor: AppColors.blueMain_buttons,
        title: const Text(
          "New Boards",
          style: TextStyle(color: AppColors.white),
        ),
        actions: [
          TextButton(
            onPressed: () {
              if (_boardNameController.text.isNotEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      "Board '${_boardNameController.text}' created!",
                    ),
                  ),
                );
                Navigator.pop(context);
              }
            },
            child: const Text(
              "SAVE",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Board Name
            TextField(
              controller: _boardNameController,
              decoration: InputDecoration(
                labelText: "Board name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Workspace Dropdown
            Text("Workspaces"),
            DropdownButtonFormField<String>(
              initialValue: selectedWorkspace,
              items: workspaces.map((workspace) {
                return DropdownMenuItem(
                  value: workspace,
                  child: Text(workspace),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedWorkspace = value!;
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            const SizedBox(height: 5),
            Text(
              "This workspace is nearing its limit for free boards. 7 out of 10 boards remain.",
              style: TextStyle(fontSize: 12, color: Colors.grey[600]),
            ),
            const SizedBox(height: 20),

            // Visibility Dropdown
            Text("Visibility"),
            DropdownButtonFormField<String>(
              initialValue: selectedVisibility,
              items: visibilityOptions.map((vis) {
                return DropdownMenuItem(value: vis, child: Text(vis));
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedVisibility = value!;
                });
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
