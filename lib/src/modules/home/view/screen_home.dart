import 'package:flutter/material.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  get kDefaultPadding => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 32, 31, 31),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.greenAccent,
        leading: const Icon(Icons.menu),
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.24,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Stack(children: [
              Positioned(
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
