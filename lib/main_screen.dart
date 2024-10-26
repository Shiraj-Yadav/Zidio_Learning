// TODO Implement this library.
import 'package:flutter/material.dart';
import 'course_details.dart';

class MainScreen extends StatelessWidget {
  final List<String> courses = ["Math", "Science", "History", "Art"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Courses'),
      ),
      body: ListView.builder(
        itemCount: courses.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(courses[index]),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CourseDetails(courseName: courses[index], courseDescription: '', imagePath: '',),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
