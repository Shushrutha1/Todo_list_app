import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../models/task_model.dart';
import 'add_task_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Box<Task> taskBox;
  final uid = FirebaseAuth.instance.currentUser?.uid;

  @override
  void initState() {
    super.initState();
    taskBox = Hive.box<Task>('tasksBox');
  }

  Future<void> deleteTask(String id) async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc(uid)
        .collection('tasks')
        .doc(id)
        .delete();
  }

  Future<void> toggleTaskDone(String id, bool val) async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc(uid)
        .collection('tasks')
        .doc(id)
        .update({'isDone': val});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My To-Do List'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const AddTaskScreen()),
            ),
          ),
        ],
      ),

      // 🔥 Firestore + Hive Integration
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance
            .collection('users')
            .doc(uid)
            .collection('tasks')
            .orderBy('createdAt', descending: true)
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
            // fallback to Hive (offline mode)
            if (taskBox.isEmpty) {
              return const Center(child: Text('No tasks yet!'));
            }

            final localTasks = taskBox.values.toList();
            return ListView.builder(
              itemCount: localTasks.length,
              itemBuilder: (context, index) {
                final task = localTasks[index];
                return ListTile(
                  title: Text(task.title),
                  subtitle: Text(task.description),
                  trailing: Checkbox(
                    value: task.isCompleted,
                    onChanged: (val) {
                      setState(() {
                        task.isCompleted = val!;
                        task.save();
                      });
                    },
                  ),
                );
              },
            );
          }

          // 🔹 If Firestore data is available
          final tasks = snapshot.data!.docs;
          return ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              final task = tasks[index];
              return Dismissible(
                key: Key(task.id),
                onDismissed: (_) => deleteTask(task.id),
                background: Container(color: Colors.redAccent),
                child: ListTile(
                  title: Text(
                    task['title'],
                    style: TextStyle(
                      decoration: task['isDone']
                          ? TextDecoration.lineThrough
                          : TextDecoration.none,
                    ),
                  ),
                  subtitle: Text(task['description']),
                  trailing: Checkbox(
                    value: task['isDone'],
                    onChanged: (val) => toggleTaskDone(task.id, val!),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
