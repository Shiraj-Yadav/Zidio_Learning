import 'package:flutter/material.dart';
import 'courses_screen.dart';
import 'profile_screen.dart'; // Import ProfileScreen
import 'sign_in_screen.dart'; // Import SignInScreen
import 'about_us_screen.dart'; // Import AboutUsScreen

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.deepPurple,
        actions: [
          IconButton(
            icon: Icon(Icons.login, color: Colors.white),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignInScreen()),
              );
            },
          ),
        ],
      ),
      body: Container(
        height: MediaQuery.of(context).size.height, // Make sure the container covers the full height of the screen
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.deepPurple, Colors.indigoAccent],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView( // Make the screen scrollable
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome to Zidio Learning',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(height: 20),
                Center(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset('images/welcome.png'), // Ensure you add an image to your assets folder
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Explore:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                ),
                SizedBox(height: 20),
                Card(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Icon(Icons.book, color: Colors.deepPurple),
                    title: Text(
                      'View Courses',
                      style: TextStyle(color: Colors.deepPurple),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CoursesScreen()),
                      );
                    },
                  ),
                ),
                Card(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Icon(Icons.person, color: Colors.deepPurple),
                    title: Text(
                      'Profile',
                      style: TextStyle(color: Colors.deepPurple),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ProfileScreen()),
                      );
                    },
                  ),
                ),
                Card(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Icon(Icons.info, color: Colors.deepPurple),
                    title: Text(
                      'About Us',
                      style: TextStyle(color: Colors.deepPurple),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AboutUsScreen()),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
