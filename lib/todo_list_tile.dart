import 'package:flutter/material.dart';
import 'package:flutter_application_2/to_do_model.dart';

class ToDoListTile extends StatelessWidget {
  final ToDoModel modelData;
  const ToDoListTile({super.key, required this.modelData});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.maxFinite,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: const [
            BoxShadow(
                color: Colors.grey,
                offset: Offset(1, 2),
                blurRadius: 0.1,
                spreadRadius: 1)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                modelData.title,
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
              ),
              Text(
                modelData.dateTime,
                style: const TextStyle(fontSize: 16, color: Colors.grey),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Text(
            modelData.description,
            style: const TextStyle(fontSize: 16, color: Colors.blue),
          )
        ],
      ),
    );
  }
}
