import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 32, 31, 31),
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Center(
          child: Text(
            'Home Tea',
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 26.0),
          ),
        ),
        elevation: 0.0,
      ),
    );
  }
}
