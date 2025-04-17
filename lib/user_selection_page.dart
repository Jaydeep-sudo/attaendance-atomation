import 'package:flutter/material.dart';
import 'teacher/teacher_login_page_fixed.dart';
import 'student/student_login_page.dart'; // Import the StudentLoginPage

class UserSelectionPage extends StatefulWidget {
  const UserSelectionPage({super.key});

  @override
  State<UserSelectionPage> createState() => _UserSelectionPageState();
}

class _UserSelectionPageState extends State<UserSelectionPage> {
  bool _isImageError = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select User Type'),
        backgroundColor: Colors.cyanAccent[700],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.cyanAccent[100],
          image: _isImageError 
              ? null
              : DecorationImage(
                  image: const AssetImage('assets/images/background.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.cyanAccent[100]!.withOpacity(0.7),
                    BlendMode.dstATop,
                  ),
                ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildUserButton(
                text: 'TEACHER',
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TeacherLoginPage(),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              _buildUserButton(
                text: 'STUDENT',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const StudentLoginPage(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildUserButton({
    required String text,
    required VoidCallback onPressed,
  }) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(200, 60),
        backgroundColor: Colors.cyanAccent[700],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.bold,
          letterSpacing: 1.2,
          shadows: [
            Shadow(
              blurRadius: 2,
              color: Colors.black54,
              offset: Offset(1, 1),
            ),
          ],
        ),
      ),
    );
  }
}
