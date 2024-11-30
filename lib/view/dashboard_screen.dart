import 'package:flutter/material.dart';
import '../commonwidgets/summary_tile.dart';
import '../widgets/drawer.dart';
import '../widgets/project_update _section.dart';
import '../widgets/task_quick_view_section.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  bool isTaskQuickViewExpanded = false;
  bool isSearchActive = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;
    final textScaler = MediaQuery.textScalerOf(context);

    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.all(width * 0.03),
            child: CircleAvatar(
              radius: width * 0.04,
              backgroundImage: const AssetImage('assets/images/images.jpg'),
            ),
          ),
        ],
        backgroundColor: Colors.black87,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: const CustomDrawer(),
      body: Container(
        color: Colors.grey[200],
        child: Column(
          children: [
            Container(
              color: Colors.black87,
              padding: EdgeInsets.symmetric(
                vertical: height * 0.02,
                horizontal: width * 0.03,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.03),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(width * 0.02),
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.search, color: Colors.black),
                          onPressed: () {
                            setState(() {});
                          },
                        ),
                        Text(
                          "Test Project with Mohsin",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: textScaler.scale(16),
                          ),
                        ),
                        const Spacer(),
                        const Icon(Icons.keyboard_arrow_down,
                            color: Colors.black),
                      ],
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SummaryTile(
                          icon: Icons.people,
                          label: 'User Involved',
                          value: '1125',
                        ),
                        SizedBox(width: width * 0.03),
                        const SummaryTile(
                          icon: Icons.home_repair_service,
                          label: 'Equipment Available',
                          value: '1125',
                        ),
                        SizedBox(width: width * 0.03),
                        const SummaryTile(
                          icon: Icons.check_circle_outline,
                          label: 'Tasks Completed',
                          value: '1125',
                        ),
                        SizedBox(width: width * 0.03),
                        const SummaryTile(
                          icon: Icons.check_circle_outline,
                          label: 'Tasks Completed',
                          value: '1125',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.all(width * 0.04),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ProjectUpdateSection(
                      height: height,
                      width: width,
                    ),
                    SizedBox(height: height * 0.02),
                    const TaskQuickViewSection(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.flash_on),
            label: 'Quick Action',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: 'Recent Discussion',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help_outline),
            label: 'Need Help',
          ),
        ],
      ),
    );
  }
}
