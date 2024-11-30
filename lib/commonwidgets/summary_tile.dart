import 'package:flutter/material.dart';

class SummaryTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const SummaryTile({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var Size(:width, :height) = size;
    return Container(
      width: width * 0.28,
      height: height * 0.12,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.grey.shade400),
      ),
      child: Column(
        children: [
          // Top (White) Part
          Container(
            height: height * 0.06,
            color: Colors.white,
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(icon, size: 29, color: Colors.black),
                const SizedBox(width: 8),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          // Bottom (Grey) Part
          Container(
            height: height * 0.057,
            color: Colors.grey.shade300,
            alignment: Alignment.center,
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 12,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
