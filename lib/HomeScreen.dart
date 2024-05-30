import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home",style: TextStyle(color: Colors.white),),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/profile', arguments: "Mridul");
              },
              child: const Text("Profile"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/setting', arguments: "Mridul");
              },
              child: const Text("Setting"),
            )
          ],
        ),
      ),
    );
  }
}
