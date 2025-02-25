import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes debug banner
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(234, 234, 234, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(57, 146, 255, 1),
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {}, // No functionality yet
        ),
        title: const Align(
          alignment: Alignment.centerRight,
          child: Text(
            'TickTick',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'Arial',
            ),
          ),
        ),
      ),
      body: ListView(
        children: const [
          TaskItem(title: "Buy groceries", completed: false),
          TaskItem(title: "Complete Flutter project", completed: false),
          TaskItem(title: "Call Mom", completed: true),
          TaskItem(title: "Read a book", completed: true),
          TaskItem(title: "Exercise for 30 mins", completed: false),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {}, // No functionality yet
        backgroundColor: Colors.blueAccent,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}

class TaskItem extends StatelessWidget {
  final String title;
  final bool completed;

  const TaskItem({super.key, required this.title, required this.completed});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: Icon(
          completed ? Icons.check_box : Icons.check_box_outline_blank,
          color: completed ? Colors.green : Colors.grey,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            decoration: completed ? TextDecoration.lineThrough : null,
            color: completed ? Colors.grey : Colors.black,
          ),
        ),
      ),
    );
  }
}
