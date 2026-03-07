
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:lottie/lottie.dart';
import '../../../models/task.dart';
import '../../../core/utils/app_colors.dart';
import '../../../core/utils/app_str.dart';
import '../../../core/widget/custom_bottom_bar.dart';
import '../../../core/widget/custom_floating_button.dart';
import '../../../core/widget/task_widget.dart';
import '../../../core/widget/base_widget.dart';
import '../../../views/tasks/task_view.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  /// Checking Done Tasks
  int checkDoneTask(List<Task> task) {
    int i = 0;
    for (Task doneTasks in task) {
      if (doneTasks.isCompleted) i++;
    }
    return i;
  }

  /// Value Of Circular Indicator
  dynamic valueOfTheIndicator(List<Task> task) {
    if (task.isNotEmpty) return task.length;
    return 3;
  }

  @override
  Widget build(BuildContext context) {
    final base = BaseWidget.of(context);
    var textTheme = Theme.of(context).textTheme;

    return ValueListenableBuilder(
      
      valueListenable: base.dataStore.listenToTask(),
      builder: (ctx, Box<Task> box, Widget? child) {
        var tasks = box.values.toList();
        tasks.sort((a, b) => a.createdAtDate.compareTo(b.createdAtDate));

        return Scaffold(
          backgroundColor: Colors.white,

          // AppBar اللي طلبتيها
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Padding(
              padding: const EdgeInsets.only(top: 9),
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/logo_icon.png",
                    width: 33,
                    height: 33,
                  ),
                  const SizedBox(width: 5),
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
                  icon: const CircleAvatar(
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

          floatingActionButton: const FAB(),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: const CustomBottomBar(),

          // Body زي ما هو كله
          body: _buildBody(tasks, base, textTheme),
        );
      },
    );
  }

  SizedBox _buildBody(List<Task> tasks, BaseWidget base, TextTheme textTheme) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(55, 0, 0, 0),
            width: double.infinity,
            height: 100,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 25,
                  height: 25,
                  child: CircularProgressIndicator(
                    valueColor: const AlwaysStoppedAnimation(
                      AppColors.primaryColor,
                    ),
                    backgroundColor: Colors.grey,
                    value: checkDoneTask(tasks) / valueOfTheIndicator(tasks),
                  ),
                ),
                const SizedBox(width: 25),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(MyString.mainTitle, style: textTheme.displayLarge),
                    const SizedBox(height: 3),
                    Text(
                      "${checkDoneTask(tasks)} of ${tasks.length} task",
                      style: textTheme.titleMedium,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10),
            child: Divider(thickness: 2, indent: 100),
          ),
          Expanded(
            child: tasks.isNotEmpty
                ? ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: tasks.length,
                    itemBuilder: (BuildContext context, int index) {
                      var task = tasks[index];
                      return Dismissible(
                        direction: DismissDirection.horizontal,
                        background: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.delete_outline, color: Colors.grey),
                            SizedBox(width: 8),
                            Text(
                              MyString.deletedTask,
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        onDismissed: (direction) =>
                            base.dataStore.daleteTask(task: task),
                        key: Key(task.id),
                        child: TaskWidget(task: tasks[index]),
                      );
                    },
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 200,
                        height: 200,
                        child: Lottie.asset("../../../../assets/lottie/1.json", animate: true),
                      ),
                      const Text(MyString.doneAllTask),
                    ],
                  ),
          ),
        ],
      ),
    );
  }
}

/// Floating Action Button
class FAB extends StatelessWidget {
  const FAB({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          CupertinoPageRoute(
            builder: (context) => TaskView(
              taskControllerForSubtitle: null,
              taskControllerForTitle: null,
              task: null,
            ),
          ),
        );
      },
      child: Material(
        borderRadius: BorderRadius.circular(15),
        elevation: 10,
        child: Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: const Center(child: Icon(Icons.add, color: Colors.white)),
        ),
      ),
    );
  }
}
