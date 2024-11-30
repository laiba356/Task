import 'package:flutter/material.dart';

class TaskQuickViewSection extends StatefulWidget {
  const TaskQuickViewSection({super.key});

  @override
  State<TaskQuickViewSection> createState() => _TaskQuickViewSectionState();
}

class _TaskQuickViewSectionState extends State<TaskQuickViewSection> {
  bool isTaskQuickViewExpanded = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Card(
      elevation: 2,
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(width * 0.04),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Tasks Quick View",
                  style: TextStyle(fontSize: width * 0.04),
                ),
                SizedBox(width: width * 0.2),
                Icon(
                  Icons.search,
                  color: Colors.black,
                  size: width * 0.05,
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
                    size: width * 0.06,
                  ),
                ),
              ],
            ),
          ),
          if (isTaskQuickViewExpanded)
            SizedBox(
              height: height * 0.4,
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: width * 0.04,
                      vertical: height * 0.01,
                    ),
                    child: Container(
                      padding: EdgeInsets.all(width * 0.03),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(width * 0.03),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            blurRadius: 5,
                            spreadRadius: 2,
                            offset: Offset(0, height * 0.003),
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Design Team",
                            style: TextStyle(
                              fontSize: width * 0.04,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundImage: const AssetImage(
                                    'assets/images/images.jpg'),
                                radius: width * 0.035,
                              ),
                              SizedBox(width: width * 0.02),
                              Text(
                                "Mohsin Far...",
                                style: TextStyle(
                                  fontSize: width * 0.035,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Stack(
                                clipBehavior: Clip.none,
                                children: [
                                  Positioned(
                                    left: width * 0.05,
                                    child: CircleAvatar(
                                      backgroundImage: const AssetImage(
                                          'assets/images/images.jpg'),
                                      radius: width * 0.035,
                                    ),
                                  ),
                                  CircleAvatar(
                                    backgroundImage: const AssetImage(
                                        'assets/images/images.jpg'),
                                    radius: width * 0.035,
                                  ),
                                ],
                              ),
                              SizedBox(width: width * 0.025),
                              Container(
                                padding: EdgeInsets.symmetric(
                                  horizontal: width * 0.02,
                                  vertical: height * 0.005,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.grey[300],
                                  borderRadius:
                                      BorderRadius.circular(width * 0.03),
                                ),
                                child: Text(
                                  "1+",
                                  style: TextStyle(
                                    fontSize: width * 0.03,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}
