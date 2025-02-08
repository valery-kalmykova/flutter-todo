import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/models/save_task.dart';
import 'package:flutter_app/models/task_model.dart';


class AddTodo extends StatelessWidget {
  AddTodo({super.key});

  final controllerTitle = TextEditingController();
  final controllerDesc = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Todo'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: controllerTitle,
              autofocus: true,
              decoration: const InputDecoration(
                hintText: 'Title',
              ),
            ),
            TextField(
              controller: controllerDesc,
              autofocus: true,
              decoration: const InputDecoration(
                hintText: 'Description',
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                context.read<SaveTask>().addTask(
                      Task(
                        title: controllerTitle.text,
                        description: controllerDesc.text,
                        isCompleted: false,
                      ),
                    );
                controllerTitle.clear();
                controllerDesc.clear();
                Navigator.of(context).pop();
              },
              child: const Text('Add'),
            ),
          ],
        ),
      ),
    );
  }
}