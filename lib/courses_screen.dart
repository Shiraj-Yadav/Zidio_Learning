import 'package:flutter/material.dart';
import 'course_details.dart';

class CoursesScreen extends StatelessWidget {
  final List<Map<String, String>> courses = [
    {
      'name': 'Mobile App Development',
      'description': 'This course offers an in-depth exploration of mobile app development using Flutter, an open-source UI software development kit created by Google. Students will learn to build cross-platform mobile applications with a single codebase. The course covers fundamental concepts of Flutter and Dart, state management, UI design, API integration, Firebase integration, and app deployment. Practical projects and a capstone project will help students apply their learning in real-world scenarios.',
      'imagePath': 'images/Mobile app dev.png',
    },
    {
      'name': 'Web Development',
      'description': 'This course provides a comprehensive guide to full-stack web development using the MERN stack (MongoDB, Express.js, React.js, Node.js). Students will learn how to build modern, scalable web applications, from front-end interfaces to back-end servers and databases. The course covers essential concepts such as RESTful API development, state management, authentication, and deployment. Practical projects and a capstone project will solidify the understanding and application ',
      'imagePath': 'images/web development.png',
    },
    {
      'name': 'HTML CSS',
      'description': 'This course provides a comprehensive introduction to the foundational technologies of the web: HTML and CSS. The course begins with an exploration of HTML, the standard markup language used to create web pages, and progresses to CSS, the language used to style and layout web pages. Students will learn how to structure content using HTML elements, create forms, and embed multimedia. They will also learn how to style their pages using CSS, including layout techniques, responsive design, and best practices for maintaining clean, maintainable code. By the end of the course, students will be able to build well-structured, visually appealing, and responsive websites.',
      'imagePath': 'images/html css.png',
    },
    {
      'name': 'Data Science',
      'description': 'This course provides a comprehensive introduction to data science, covering the essential concepts and tools used to analyze and interpret complex data. Students will learn statistical methods, programming skills, data visualization techniques, machine learning algorithms, and the ethical considerations of data use. The course combines theoretical knowledge with practical applications, culminating in a capstone project where students will apply their learning to solve real-world problems',
      'imagePath': 'images/data analytics.png',
    },
    {
      'name': 'UI UX Design',
      'description': 'This course offers an in-depth exploration of user interface (UI) and user experience (UX) design principles. Students will learn to create intuitive, user-friendly interfaces through user research, wireframing, prototyping, and visual design. The course also covers usability testing and the use of industry-standard design tools. Students will apply their knowledge in a capstone project, designing a full UI/UX solution for a real-world problem',
      'imagePath': 'images/ui ux.png',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Courses'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: courses.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.all(10),
            elevation: 5,
            child: ListTile(
              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              leading: Image.asset(
                courses[index]['imagePath']!,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
              title: Text(
                courses[index]['name']!,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                courses[index]['description']!,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: Icon(Icons.arrow_forward, color: Colors.teal),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CourseDetails(
                      courseName: courses[index]['name']!,
                      courseDescription: courses[index]['description']!,
                      imagePath: courses[index]['imagePath']!,
                    ),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
