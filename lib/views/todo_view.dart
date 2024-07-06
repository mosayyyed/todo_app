import 'package:flutter/material.dart';

import '../widgets/todo_tile.dart';

class TodoView extends StatelessWidget {
  const TodoView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> tasks = [
      {'title': 'Complete Flutter project', 'subtitle': '10:00 AM'},
      {'title': 'Attend meeting', 'subtitle': '11:00 AM'},
      {'title': 'Lunch break', 'subtitle': '1:00 PM'},
      {'title': 'Review code', 'subtitle': '3:00 PM'},
      {'title': 'Write documentation', 'subtitle': '4:00 PM'},
      {'title': 'Gym session', 'subtitle': '5:00 PM'},
      {'title': 'Read a book', 'subtitle': '7:00 PM'},
      {'title': 'Dinner', 'subtitle': '8:00 PM'},
      {'title': 'Call family', 'subtitle': '9:00 PM'},
      {'title': 'Plan next day', 'subtitle': '10:00 PM'},
      {'title': 'Morning jog', 'subtitle': '6:00 AM'},
      {'title': 'Check emails', 'subtitle': '8:00 AM'},
      {'title': 'Team sync-up', 'subtitle': '9:00 AM'},
      {'title': 'Design review', 'subtitle': '11:30 AM'},
      {'title': 'Client call', 'subtitle': '2:00 PM'},
      {'title': 'Code debugging', 'subtitle': '4:30 PM'},
      {'title': 'Meditation', 'subtitle': '6:30 PM'},
      {'title': 'Prepare presentation', 'subtitle': '7:30 PM'},
      {'title': 'Watch tutorial', 'subtitle': '8:30 PM'},
      {'title': 'Go to bed', 'subtitle': '11:00 PM'},
    ];

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          final task = tasks[index];

          return TodoTile(
            title: task['title']!,
            subtitle: task['subtitle']!,
            onDelete: () {},
          );
        },
      ),
    );
  }
}
