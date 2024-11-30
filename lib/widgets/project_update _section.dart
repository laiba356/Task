import 'package:flutter/material.dart';

class ProjectUpdateSection extends StatefulWidget {
  final double height;
  final double width;

  const ProjectUpdateSection({
    super.key,
    required this.height,
    required this.width,
  });

  @override
  State<ProjectUpdateSection> createState() => _ProjectUpdateSectionState();
}

class _ProjectUpdateSectionState extends State<ProjectUpdateSection> {
  bool isSearchActive = false;
  bool isTaskQuickViewExpanded = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textScaler = MediaQuery.textScalerOf(context);

    return Card(
      elevation: 2,
      color: Colors.grey[200],
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: isSearchActive
                  ? [
                      // Search Bar
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.search),
                            hintText: "Search",
                            hintStyle:
                                TextStyle(fontSize: textScaler.scale(14)),
                            contentPadding: const EdgeInsets.symmetric(
                                vertical: 0, horizontal: 12),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: Colors.grey[200],
                          ),
                          onChanged: (value) {},
                        ),
                      ),
                      const SizedBox(width: 8),
                      // Dropdown for number
                      DropdownButton<int>(
                        value: 10,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        onChanged: (int? newValue) {
                          //
                        },
                        items: [10, 20, 30]
                            .map((int value) => DropdownMenuItem<int>(
                                  value: value,
                                  child: Text(
                                    value.toString(),
                                    style: TextStyle(
                                        fontSize: textScaler.scale(14)),
                                  ),
                                ))
                            .toList(),
                        underline: const SizedBox(),
                      ),
                      // Up Arrow Icon
                      IconButton(
                        icon: const Icon(Icons.keyboard_arrow_up),
                        onPressed: () {
                          setState(() {
                            isSearchActive = false;
                          });
                        },
                      ),
                    ]
                  : [
                      // Default Row
                      Text(
                        "Project Update",
                        style: TextStyle(
                          fontSize: textScaler.scale(12),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          height: widget.height * 0.03,
                          width: widget.width * 0.22,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 6),
                          decoration: BoxDecoration(
                            color: Colors.grey[800],
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Text(
                            "Mark all Read",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: textScaler.scale(9),
                            ),
                          ),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.search),
                        onPressed: () {
                          setState(() {
                            isSearchActive = true;
                          });
                        },
                      ),
                      DropdownButton<int>(
                        value: 10,
                        icon: const Icon(Icons.keyboard_arrow_down),
                        onChanged: (int? newValue) {
                          //
                        },
                        items: [10, 20, 30]
                            .map((int value) => DropdownMenuItem<int>(
                                  value: value,
                                  child: Text(
                                    value.toString(),
                                    style: TextStyle(
                                        fontSize: textScaler.scale(14)),
                                  ),
                                ))
                            .toList(),
                        underline: const SizedBox(),
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.black,
                          minimumSize:
                              Size(widget.width * 0.08, widget.height * 0.03),
                          padding: EdgeInsets.zero,
                        ),
                        onPressed: () {},
                        child: const Icon(
                          Icons.keyboard_arrow_down,
                          color: Colors.white,
                        ),
                      )
                    ],
            ),
            const Divider(),
            SizedBox(height: textScaler.scale(8)),
            Text(
              "Update",
              style: TextStyle(
                  fontSize: textScaler.scale(14), fontWeight: FontWeight.bold),
            ),
            SizedBox(height: textScaler.scale(8)),
            Container(
              height: widget.height * 0.17,
              width: widget.width * 0.88,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Your Cheetah Noman Raza 115 / LHR has now picked up your order and is speeding your way. You can reach him 03000090909. To ensure your health and safety, we have tested Noman Raza 115 /LHR's temperature in the morning and it was 98 degrees Fahrenheit.",
                  style: TextStyle(fontSize: textScaler.scale(14)),
                ),
              ),
            ),
            // Second container
            Container(
              height: widget.height * 0.05,
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
              ),
              child: Row(
                children: [
                  const Icon(
                    Icons.calendar_today_outlined,
                    color: Colors.white,
                  ),
                  SizedBox(width: textScaler.scale(8)),
                  Text(
                    "Mon, 10 July 2022",
                    style: TextStyle(
                        fontSize: textScaler.scale(14), color: Colors.white),
                  ),
                ],
              ),
            ),
            SizedBox(height: textScaler.scale(12)),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "To ensure your health safety...",
                      style: TextStyle(fontSize: textScaler.scale(11)),
                    ),
                    SizedBox(
                      width: widget.width * 0.2,
                    ),
                    const Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isTaskQuickViewExpanded = !isTaskQuickViewExpanded;
                        });
                      },
                      child: Icon(
                        isTaskQuickViewExpanded
                            ? Icons.keyboard_arrow_up
                            : Icons.keyboard_arrow_down,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
