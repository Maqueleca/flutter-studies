import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  Widget getBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 355.0,
            width: 297.0,
            child: Column(
              children: [],
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Text(
            "Maqueleca J ✔",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 16, color: Colors.black),
          ),
          const SizedBox(height: 10.0),
          const Text(
            "✨ Design",
            style: TextStyle(fontSize: 13, color: Colors.black),
          ),
          const Text(
            "📚 Stanford University",
            style: TextStyle(fontSize: 13, color: Colors.black),
          ),
          const Text(
            "🏠 Los Vegas",
            style: TextStyle(fontSize: 13, color: Colors.black),
          ),
          const Text(
            "📎 6 miles away",
            style: TextStyle(fontSize: 13, color: Colors.black),
          ),
          const SizedBox(height: 20.0),
          const Text(
            "About",
            style: TextStyle(
              fontSize: 14,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10.0),
           const Text(
            "I love any movie where they sponantaneously break out into song," 
            " can only eat three pleces of pizza.",
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
