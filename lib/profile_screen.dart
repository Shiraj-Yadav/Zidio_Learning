import 'package:flutter/material.dart';
import 'edit_profile_screen.dart'; // Import EditProfileScreen

class ProfileScreen extends StatelessWidget {
  final String userName = "Shiraj"; // Sample data, replace with actual data
  final String email = "shirajy4444@gmail.com"; // Sample data, replace with actual data
  final String bio = "Avid learner and tech enthusiast.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.orangeAccent,
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              // Add logout functionality here
            },
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.orangeAccent, Colors.deepOrangeAccent],
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
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('images/profile_image.png'), // Ensure you have this image in your assets
                    ),
                    SizedBox(height: 10),
                    Text(
                      userName,
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    Text(
                      email,
                      style: TextStyle(fontSize: 16, color: Colors.white70),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Bio:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              Text(
                bio,
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
              SizedBox(height: 20),
              Divider(color: Colors.white),
              Text(
                'Recent Activities',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
              ),
              SizedBox(height: 10),
              Expanded(
                child: ListView(
                  children: [
                    ListTile(
                      leading: Icon(Icons.check_circle_outline, color: Colors.white),
                      title: Text('Completed Mobile App Development course', style: TextStyle(color: Colors.white)),
                      subtitle: Text('2 days ago', style: TextStyle(color: Colors.white70)),
                    ),
                    ListTile(
                      leading: Icon(Icons.check_circle_outline, color: Colors.white),
                      title: Text('Passed Web Development quiz', style: TextStyle(color: Colors.white)),
                      subtitle: Text('1 week ago', style: TextStyle(color: Colors.white70)),
                    ),
                    ListTile(
                      leading: Icon(Icons.check_circle_outline, color: Colors.white),
                      title: Text('Enrolled in HTML CSS course', style: TextStyle(color: Colors.white)),
                      subtitle: Text('1 month ago', style: TextStyle(color: Colors.white70)),
                    ),
                  ],
                ),
              ),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => EditProfileScreen(userName: userName, email: email, bio: bio)),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    textStyle: TextStyle(fontSize: 20),
                  ),
                  child: Text('Edit Profile', style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
