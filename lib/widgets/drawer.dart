import 'package:flutter/material.dart';

import '../view/project_list_dialogue.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.grey[800],
      child: Column(
        children: [
          // Profile Section
          Container(
            color: Colors.black87,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
            child: const Row(
              children: [
                // User Avatar
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/images.jpg'),
                ),
                SizedBox(width: 12),
                // User Info
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Mohsin Faraz",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      "Senior Research Associate",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          // Menu Items
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                // Expandable items
                _buildExpandableMenuItem(
                  title: "Research",
                  icon: Icons.science,
                  subItems: [
                    {"title": "New Project", "icon": Icons.add},
                    {
                      "title": "My Projects",
                      "icon": Icons.folder,
                      "onTap": () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return const ProjectListDialog();
                          },
                        );
                      },
                    },
                  ],
                ),
                _buildExpandableMenuItem(
                  title: "Team",
                  icon: Icons.people,
                  subItems: [],
                ),
                _buildExpandableMenuItem(
                  title: "Laboratory",
                  icon: Icons.biotech,
                  subItems: [],
                ),
                _buildExpandableMenuItem(
                  title: "Task",
                  icon: Icons.task,
                  subItems: [],
                ),
                _buildExpandableMenuItem(
                  title: "Data",
                  icon: Icons.storage,
                  subItems: [],
                ),
                _buildExpandableMenuItem(
                  title: "Discussion",
                  icon: Icons.chat,
                  subItems: [],
                ),
                _buildExpandableMenuItem(
                  title: "Publish",
                  icon: Icons.publish,
                  subItems: [],
                ),

                _buildNonExpandableMenuItem(
                  title: "Expense",
                  icon: Icons.attach_money,
                  subtitle: "Coming Soon",
                ),

                _buildNonExpandableMenuItem(
                  title: "Setting",
                  icon: Icons.settings,
                ),

                _buildNonExpandableMenuItem(
                  title: "Ticketing",
                  icon: Icons.confirmation_num,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Builds expandable menu items with arrows
  Widget _buildExpandableMenuItem({
    required String title,
    required IconData icon,
    required List<Map<String, dynamic>> subItems,
  }) {
    return ExpansionTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(title,
          style: const TextStyle(fontSize: 14, color: Colors.white)),
      iconColor: Colors.white, // Arrow icon color
      collapsedIconColor: Colors.white,
      children: subItems
          .map((subItem) => ListTile(
                tileColor: Colors.white,
                leading: Icon(subItem['icon'], color: Colors.black),
                title: Text(
                  subItem['title'],
                  style: const TextStyle(color: Colors.black),
                ),
                onTap: subItem['onTap'],
              ))
          .toList(),
    );
  }

  /// Builds non-expandable menu items without arrows
  Widget _buildNonExpandableMenuItem({
    required String title,
    required IconData icon,
    String? subtitle,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: subtitle != null
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title, style: const TextStyle(color: Colors.white)),
                Text(
                  subtitle,
                  style: const TextStyle(color: Colors.grey, fontSize: 12),
                ),
              ],
            )
          : Text(title, style: const TextStyle(color: Colors.white)),
      onTap: () {},
    );
  }
}
