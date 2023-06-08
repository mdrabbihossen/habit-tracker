import 'package:flutter/material.dart';
import 'package:habit_tracker/model/data/habit.dart';

class ListItem extends StatelessWidget {
  final int id;

  const ListItem({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 15.0),
        ListTile(
          leading: Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: id == 0 ? habits2[id]['color'] : Colors.transparent,
              border: id == 0
                  ? const Border()
                  : Border.all(
                      color: Colors.grey[500]!,
                    ),
            ),
            child: Icon(
              Icons.check,
              color: id == 0 ? Colors.white : Colors.grey[500],
            ),
          ),
          title: Text(
            habits2[id]['objectif'],
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 19,
            ),
          ),
          subtitle: Text(
            habits2[id]['progress'],
            style: TextStyle(
              color: Colors.grey[500],
              fontSize: 17,
            ),
          ),
        ),
const SizedBox(height: 15.0),
        LinearProgressIndicator(
          value: .71,
          backgroundColor: const Color(0xff1c232d),
          valueColor: AlwaysStoppedAnimation(
            habits2[id]['color'],
          ),
        ),
      ],
    );
  }
}
