import 'package:flutter/material.dart';

class AnnouncementScreen extends StatelessWidget {
  final bool isEnabled;
  final ValueChanged<bool> onToggle;
  final TextEditingController controller;
  final VoidCallback onPublish;

  const AnnouncementScreen({
    super.key,
    this.isEnabled = true,
    required this.onToggle,
    required this.controller,
    required this.onPublish,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        centerTitle: true,
        title: const Text('Announcement'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Announcement content'),
                Switch(value: isEnabled, onChanged: onToggle),
              ],
            ),
            const SizedBox(height: 10),
            TextField(
              controller: controller,
              maxLines: 5,
              decoration: InputDecoration(
                hintText: 'Type announcement',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Center(
              child: SizedBox(
                width: 344,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF7A1224), // burgundy
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 0,
                    shadowColor: Colors.transparent,
                  ),
                  onPressed: onPublish,
                  child: const Text('Publish'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
