import 'package:flutter/material.dart';

import '../models/task_model.dart';
import '../widgets/todo_tile.dart';

class TodoView extends StatefulWidget {
  const TodoView({super.key});

  @override
  TodoViewState createState() => TodoViewState();
}

class TodoViewState extends State<TodoView> {
  final List<Task> tasks = [
    Task(title: 'Complete Flutter project', subtitle: '10:00 AM'),
    Task(title: 'Attend meeting', subtitle: '11:00 AM'),
    Task(title: 'Lunch break', subtitle: '1:00 PM'),
    Task(title: 'Review code', subtitle: '3:00 PM'),
    Task(title: 'Write documentation', subtitle: '4:00 PM'),
    Task(title: 'Gym session', subtitle: '5:00 PM'),
    Task(title: 'Read a book', subtitle: '7:00 PM'),
    Task(title: 'Dinner', subtitle: '8:00 PM'),
    Task(title: 'Call family', subtitle: '9:00 PM'),
    Task(title: 'Plan next day', subtitle: '10:00 PM'),
    Task(title: 'Morning jog', subtitle: '6:00 AM'),
    Task(title: 'Check emails', subtitle: '8:00 AM'),
    Task(title: 'Team sync-up', subtitle: '9:00 AM'),
    Task(title: 'Design review', subtitle: '11:30 AM'),
    Task(title: 'Client call', subtitle: '2:00 PM'),
    Task(title: 'Code debugging', subtitle: '4:30 PM'),
    Task(title: 'Meditation', subtitle: '6:30 PM'),
    Task(title: 'Prepare presentation', subtitle: '7:30 PM'),
    Task(title: 'Watch tutorial', subtitle: '8:30 PM'),
    Task(title: 'Go to bed', subtitle: '11:00 PM'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        final task = tasks[index];

        return TodoTile(
          task: task,
          onDelete: () => _deleteTask(index),
        );
      },
    );
  }

  void _deleteTask(int index) {
    setState(() {
      tasks.removeAt(index);
    });
  }
}
