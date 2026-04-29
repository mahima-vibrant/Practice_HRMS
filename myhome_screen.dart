import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF2F5DAA), Color(0xFFEDEDED)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 100),

            // 🔷 STACKED IMAGE CARDS
            SizedBox(
              height: 500,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // 🔹 BACK CARD
                  Transform(
                    alignment: Alignment.center,
                    transform: Matrix4.identity()
                      ..translate(0.0, -30.0)
                      ..rotateZ(-0.10)
                      ..scale(0.9),
                    child: Container(
                      width: screenWidth * 0.7,
                      height: 350,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(0),
                        image: const DecorationImage(
                          image: AssetImage("lib/assets/images/Todaytask.png"),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),

                  // 🔹 FRONT CARD
                  Transform.translate(
                    offset: const Offset(10, 180),
                    child: Container(
                      width: screenWidth * 1.5,
                      height: 800,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          image: AssetImage(
                            "lib/assets/images/Workingperiod.png",
                          ),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const Spacer(),

            // 🔤 TITLE
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Text(
                "Navigate Your Work Journey\nwith Clarity & Efficiency",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),

            const SizedBox(height: 20),

            // 🔤 SUBTITLE
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "Empower your workflow, enhance productivity, and support your professional growth.",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ),

            const SizedBox(height: 30),

            // 🔵 SIGN IN BUTTON
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/signin'); // ✅ NAVIGATION
                },
                child: Container(
                  width: double.infinity,
                  height: 55,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xFF3FA7D6), Color(0xFF2F5DAA)],
                    ),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Center(
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 15),

            // ⚪ SIGN UP BUTTON
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {},
                child: const Text("Sign Up"),
              ),
            ),

            const SizedBox(height: 70),
          ],
        ),
      ),
    );
  }
}
