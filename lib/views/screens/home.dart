import 'package:flutter/material.dart';
import 'package:habit_tracker/model/data/habit.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xff131b26),
        body: Container(
          padding: const EdgeInsets.only(top: 25.0, left: 25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: RichText(
                      softWrap: true,
                      text: const TextSpan(
                        children: [
                          TextSpan(
                            text: "Most Popular",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 25,
                            ),
                          ),
                          TextSpan(
                            text: " Habits",
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(9.0),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xff6f1bff),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff6f1bff),
                              offset: Offset(0, 3),
                              blurRadius: 5.0,
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 25.0),
                ],
              ),
              const SizedBox(height: 35.0),
              SizedBox(
                height: 150,
                child: ListView.builder(
                  itemCount: habits.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final habit = habits[index];
                    return Container(
                      width: 150,
                      margin: const EdgeInsets.only(
                        right: 15.0,
                        top: 9.0,
                        bottom: 9.0,
                      ),
                      padding: const EdgeInsets.all(13.0),
                      decoration: BoxDecoration(
                        color: habit['color'],
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: habit['color'],
                            blurRadius: 5.0,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            habit['title'],
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 27,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            habit['fulltext'],
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
