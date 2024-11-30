import 'package:flutter/material.dart';
import '../commonwidgets/coloured_container.dart';

class ProjectListDialog extends StatelessWidget {
  const ProjectListDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final textScaler = MediaQuery.textScalerOf(context);

    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      insetPadding: EdgeInsets.symmetric(
        horizontal: screenWidth * 0.05,
        vertical: screenHeight * 0.05,
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.search, color: Colors.black),
                  onPressed: () {},
                ),
                Expanded(
                  child: Text(
                    "Test Project with Mohsin",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: textScaler.scale(16),
                    ),
                  ),
                ),
                const Icon(Icons.keyboard_arrow_down, color: Colors.black),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(screenWidth * 0.04),
            color: Colors.grey[850],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Project List",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: textScaler.scale(18),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.filter_list, color: Colors.white),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          Container(
            color: Colors.grey[850],
            child: Padding(
              padding: EdgeInsets.all(screenWidth * 0.04),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Search",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              fontSize: textScaler.scale(14),
                            ),
                            prefixIcon: const Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.02),
                      DropdownButtonHideUnderline(
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.03,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: DropdownButton<String>(
                            value: "10",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: textScaler.scale(14),
                            ),
                            items: const [
                              DropdownMenuItem(value: "10", child: Text("10")),
                              DropdownMenuItem(value: "20", child: Text("20")),
                            ],
                            onChanged: (value) {
                              value = value;
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  Container(
                    height: screenHeight * 0.15,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Deadline:",
                                style: TextStyle(
                                  fontSize: textScaler.scale(14),
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.4,
                                height: screenHeight * 0.05,
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: "Starting Date",
                                    labelStyle: TextStyle(
                                      fontSize: textScaler.scale(14),
                                    ),
                                    suffixIcon:
                                        const Icon(Icons.calendar_today),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: screenWidth * 0.02),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Until:",
                                style: TextStyle(
                                  fontSize: textScaler.scale(14),
                                ),
                              ),
                              SizedBox(
                                width: screenWidth * 0.4,
                                height: screenHeight * 0.05,
                                child: TextField(
                                  decoration: InputDecoration(
                                    labelText: "Ending Date",
                                    labelStyle: TextStyle(
                                      fontSize: textScaler.scale(14),
                                    ),
                                    suffixIcon:
                                        const Icon(Icons.calendar_today),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(8),
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
                  SizedBox(height: screenHeight * 0.02),
                  Row(
                    children: [
                      Text(
                        "Status",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: textScaler.scale(14),
                        ),
                      ),
                      SizedBox(width: screenWidth * 0.02),
                      const ColoredContainer(
                        color: Colors.green,
                        text: "Completed",
                      ),
                      SizedBox(width: screenWidth * 0.01),
                      const ColoredContainer(
                        color: Colors.orange,
                        text: "Delayed",
                      ),
                      SizedBox(width: screenWidth * 0.01),
                      const ColoredContainer(
                        color: Colors.blue,
                        text: "On Going",
                      ),
                      SizedBox(width: screenWidth * 0.01),
                      const ColoredContainer(
                        color: Colors.purple,
                        text: "On Hold",
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.015),
                  const Divider(),
                  SizedBox(height: screenHeight * 0.02),
                  Row(
                    children: [
                      const Text(
                        "Research Name",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: screenWidth * 0.37),
                      const Text("Status",
                          style: TextStyle(color: Colors.white))
                    ],
                  )
                ],
              ),
            ),
          ),
          // const Divider(),
          Expanded(
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) {
                return ListTile(
                  tileColor: Colors.white,
                  title: Text(
                    "First Research Project",
                    style: TextStyle(fontSize: textScaler.scale(14)),
                  ),
                  trailing: _buildStatusIndicator(
                    index % 3 == 0
                        ? "Completed"
                        : index % 3 == 1
                            ? "Delayed"
                            : "On Going",
                    index % 3 == 0
                        ? Colors.green
                        : index % 3 == 1
                            ? Colors.orange
                            : Colors.blue,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatusIndicator(String label, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        label,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
