import 'package:flutter/material.dart';

class TeacherHomePage extends StatelessWidget {
  const TeacherHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Teacher Home'),
        backgroundColor: Colors.cyanAccent[700],
      ),
      body: Column(
        children: [
          // Navigation Bar
          Container(
            padding: const EdgeInsets.all(8.0),
            color: Colors.cyanAccent[100],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildNavButton(context, 'Add'),
                _buildNavButton(context, 'Delete'),
                _buildNavButton(context, 'Attendance'),
                _buildNavButton(context, 'Lectures'),
              ],
            ),
          ),
          // Additional content can go here
          Expanded(
            child: Center(
              child: Text(
                'Welcome to the Teacher Home Page!',
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNavButton(BuildContext context, String title) {
    return ElevatedButton(
      onPressed: () {
        // TODO: Implement navigation logic for each button
      },
      child: Text(title),
    );
  }
}
