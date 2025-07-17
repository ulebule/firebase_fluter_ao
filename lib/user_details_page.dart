import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserDetailsPage extends StatelessWidget {
  const UserDetailsPage({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('User Details')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (user.photoURL != null)
              Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage(user.photoURL!),
                ),
              ),
            const SizedBox(height: 16),
            Text('Name: ${user.displayName ?? 'N/A'}'),
            Text('Email: ${user.email ?? 'N/A'}'),
            Text('Phone: ${user.phoneNumber ?? 'N/A'}'),
            Text('UID: ${user.uid}'),
            // Add more user details here
          ],
        ),
      ),
    );
  }
}
