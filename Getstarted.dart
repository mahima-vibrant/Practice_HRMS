import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            // 🔹 Logo + Skip
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("lib/assets/images/vibrantlogo.png", height: 40),
                  const Text("Skip", style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
            SizedBox(height: 10),
            // 🔹 Image
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Image.asset(
                  "lib/assets/images/onboading.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // 🔹 Bottom Container
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Stay Organized With Team",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),

                  const Text(
                    "Manage your employees, tasks, attendance, and daily activities in one seamless platform. Stay connected with your team and ensure every process runs smoothlyand effectively.",
                    style: TextStyle(color: Colors.grey, fontSize: 17),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 150),

                  // 🔹 Arrow Button
                  Align(
                    alignment: Alignment.bottomRight,
                    child: GestureDetector(
                      onTap: () {
                        // 👉 You can go to home again or dashboard
                        Navigator.pushReplacementNamed(context, '/home');
                      },
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.blue.shade900,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
