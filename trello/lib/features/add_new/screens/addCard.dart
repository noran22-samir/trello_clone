import 'package:flutter/material.dart';
import 'package:trello/core/utils/app_colors.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({super.key});

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descController = TextEditingController();

  String? selectedBoard;
  String? selectedList;
  DateTime? startDate;
  DateTime? dueDate;

  final List<String> boards = ['Design', 'Backend', 'Frontend'];
  final List<String> lists = ['To Do', 'In Progress', 'Done'];

  @override
  void dispose() {
    _titleController.dispose();
    _descController.dispose();
    super.dispose();
  }

  InputDecoration _decor(String label, {String? hint}) {
    return InputDecoration(
      labelText: label,
      hintText: hint,
      filled: true,
      fillColor: AppColors.surface,
      labelStyle: const TextStyle(color: AppColors.hint),
      hintStyle: const TextStyle(color: AppColors.hint),
      contentPadding: const EdgeInsets.symmetric(horizontal: 14, vertical: 14),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.border),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.border),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: AppColors.blueMain_buttons,
          width: 1.2,
        ),
      ),
    );
  }

  Future<void> _pickDate({
    required DateTime? initial,
    required void Function(DateTime?) onPicked,
  }) async {
    final now = DateTime.now();
    final picked = await showDatePicker(
      context: context,
      firstDate: DateTime(now.year - 2),
      lastDate: DateTime(now.year + 5),
      initialDate: initial ?? now,
    );
    onPicked(picked);
  }

  String _fmt(DateTime? d) {
    if (d == null) return '';
    return '${d.year}-${d.month.toString().padLeft(2, '0')}-${d.day.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.blueMain_buttons,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: AppColors.white),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text('New Card', style: TextStyle(color: AppColors.white)),
        actions: [
          TextButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Card Saved (UI only)')),
              );
              Navigator.pop(context);
            },
            child: const Text('SAVE', style: TextStyle(color: AppColors.white)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            DropdownButtonFormField<String>(
              value: selectedBoard,
              decoration: _decor('Board', hint: 'Select board'),
              items: boards
                  .map((b) => DropdownMenuItem(value: b, child: Text(b)))
                  .toList(),
              onChanged: (value) {
                setState(() => selectedBoard = value);
              },
            ),
            const SizedBox(height: 12),

            DropdownButtonFormField<String>(
              value: selectedList,
              decoration: _decor('List', hint: 'Select list'),
              items: lists
                  .map((l) => DropdownMenuItem(value: l, child: Text(l)))
                  .toList(),
              onChanged: selectedBoard == null
                  ? null
                  : (value) {
                      setState(() => selectedList = value);
                    },
            ),
            const SizedBox(height: 12),

            TextFormField(
              controller: _titleController,
              decoration: _decor('Card name'),
            ),
            const SizedBox(height: 12),

            TextFormField(
              controller: _descController,
              maxLines: 3,
              decoration: _decor('Description'),
            ),
            const SizedBox(height: 18),

            Row(
              children: [
                const Icon(
                  Icons.group_outlined,
                  size: 28,
                  color: AppColors.text,
                ),
                const SizedBox(width: 14),
                Container(
                  width: 44,
                  height: 44,
                  decoration: const BoxDecoration(
                    color: AppColors.blueMain_buttons,
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(Icons.add, color: AppColors.white),
                ),
              ],
            ),
            const SizedBox(height: 20),

            Row(
              children: [
                const Icon(Icons.access_time, size: 26, color: AppColors.text),
                const SizedBox(width: 10),
                Expanded(
                  child: InkWell(
                    onTap: () => _pickDate(
                      initial: startDate,
                      onPicked: (d) => setState(() => startDate = d),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        startDate == null
                            ? 'start date'
                            : 'start date  ${_fmt(startDate)}',
                        style: const TextStyle(color: AppColors.text),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    onTap: () => _pickDate(
                      initial: dueDate,
                      onPicked: (d) => setState(() => dueDate = d),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          dueDate == null
                              ? 'due date'
                              : 'due date  ${_fmt(dueDate)}',
                          style: const TextStyle(color: AppColors.text),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),

            Row(
              children: const [
                Icon(Icons.attach_file, size: 26, color: AppColors.text),
                SizedBox(width: 10),
                Text('attachment', style: TextStyle(color: AppColors.text)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
