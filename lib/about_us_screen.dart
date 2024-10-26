import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  final List<Map<String, String>> faculties = [
    {'name': 'Mr.Animesh Singh', 'course': 'Mobile App Development'},
    {'name': 'Mr.Animesh Singh', 'course': 'Web Development'},
    {'name': 'Mr.Animesh Singh', 'course': 'HTML CSS'},
    {'name': 'Mr.Chandan Mishra', 'course': 'Data Science'},
    {'name': 'Miss. Salma Husna Salsabila', 'course': 'UI UX Design'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us',style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurple,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurple, Colors.indigoAccent],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'About Us',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Zidio Development Software Company is a dynamic and forward-thinking technology firm dedicated to delivering cutting-edge software solutions. With a focus on innovation and a commitment to excellence, we aim to redefine the digital landscape through our expertise and passion for technology.',
                style: TextStyle(fontSize: 16, color: Colors.white),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Divider(color: Colors.white),
              Center(
                child: Text(
                  'Our Faculties',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: ListView.builder(
                  itemCount: faculties.length,
                  itemBuilder: (context, index) {
                    return Card(
                      color: Colors.white70,
                      margin: EdgeInsets.symmetric(vertical: 8),
                      child: ListTile(
                        leading: Icon(Icons.person, color: Colors.deepPurple),
                        title: Text(
                          faculties[index]['name']!,
                          style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          faculties[index]['course']!,
                          style: TextStyle(color: Colors.deepPurple),
                        ),
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
