import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  final List<Map<String, dynamic>> options = [
    {
      'name': 'Account',
      'icon': Ionicons.person_circle_outline,
    },
    {
      'name': 'Edit Information',
      'icon': Ionicons.pencil_outline,
    },
    {
      'name': 'Theme',
      'icon': Ionicons.moon_outline,
    },
    {
      'name': 'Language',
      'icon': Ionicons.language_outline,
    },
    {
      'name': 'Log out',
      'icon': Ionicons.log_out_outline,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Settings",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 40),
              ListView.builder(
                itemCount: options.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Icon(options[index]['icon']),
                    title: Text(
                      options[index]['name'],
                      style: GoogleFonts.nunito(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {
                      // Implement the functionality you want here.
                      // For example, you can use Navigator.push to navigate to a new screen.
                    },
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
