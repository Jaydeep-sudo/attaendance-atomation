import 'package:flutter/material.dart';

class StudentHomePage extends StatelessWidget {
  const StudentHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Home'),
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
                _buildNavButton(context, 'Marks'),
                _buildNavButton(context, 'Schedule'),
                _buildNavButton(context, 'Attendance'),
              ],
            ),
          ),
          // Additional content can go here
          Expanded(
            child: Center(
              child: Text(
                'Welcome to the Student Home Page!',
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
