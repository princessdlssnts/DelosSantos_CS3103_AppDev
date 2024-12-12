import 'package:flutter/material.dart';

class CVSectionsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("CV Sections"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: const Color.fromRGBO(33, 150, 243, 1),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            ExpansionTile(
              title: const Text("Education"),
              leading: const Icon(Icons.school),
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Bachelor of Science in Computer Science\nUniversity of XYZ\nGraduated: 2023",
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: const Text("Skills"),
              leading: const Icon(Icons.code),
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "- Flutter Development\n- Dart Programming\n- UI/UX Design\n- Backend Integration",
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: const Text("Projects"),
              leading: const Icon(Icons.work),
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "- E-commerce App: Built using Flutter\n- Portfolio Website: Designed for showcasing work\n- Chat Application: Real-time messaging app",
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: const Text("Experience"),
              leading: const Icon(Icons.business),
              children: const [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "- Software Developer Intern at ABC Corp\n- Freelance Mobile App Developer",
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Navigate back to My CV
              },
              child: const Text("Back to My CV"),
            ),
          ],
        ),
      ),
    );
  }
}
