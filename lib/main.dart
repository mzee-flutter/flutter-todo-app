import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/task_data.dart';
import 'screens/task_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {
        return TaskData();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: TaskScreen.id,
        routes: {
          TaskScreen.id: (context) => TaskScreen(),
        },
      ),
    );
  }
}
