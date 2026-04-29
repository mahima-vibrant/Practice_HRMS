import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 🔹 HEADER
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 18,
                        backgroundImage: AssetImage(
                          'lib/assets/images/profile.png', // ✅ fixed path
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Varsha",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "UI/UX Developer",
                            style: TextStyle(color: Colors.blue, fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Stack(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.notifications, size: 26),
                            onPressed: () {},
                          ),
                          Positioned(
                            right: 6,
                            top: 6,
                            child: Container(
                              padding: const EdgeInsets.all(3),
                              decoration: const BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                              child: const Text(
                                '3',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 5),
                      IconButton(
                        icon: const Icon(Icons.message, size: 26),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 20),

              // 🔵 TOP CARD
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                height: 100,
                decoration: BoxDecoration(
                  color: const Color(0xFF2F5DAA),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "My Work Summary",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Today task & presence activity",
                          style: TextStyle(color: Colors.white70, fontSize: 16),
                        ),
                      ],
                    ),
                    Icon(Icons.videocam, color: Colors.white, size: 40),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // 🔹 MEETING SECTION (ONE CARD)
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    Row(
                      children: [
                        const Text(
                          "Today Meeting",
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 3,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: const Text("2"),
                        ),
                      ],
                    ),

                    const SizedBox(height: 5),
                    const Text(
                      "Your schedule for the day",
                      style: TextStyle(
                        color: Color.fromARGB(255, 2, 2, 2),
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),

                    const SizedBox(height: 12),

                    meetingCard("Project Meeting"),
                    meetingCard("Dashboard Report"),
                  ],
                ),
              ),

              const SizedBox(height: 40),

              // 🔹 TASK SECTION
              sectionTitle("Today Task", "1"),
              taskCard(),
            ],
          ),
        ),
      ),
    );
  }

  // 🔹 Section Title
  Widget sectionTitle(String title, String count) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 8),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(count),
          ),
        ],
      ),
    );
  }

  // 🔹 Meeting Card
  Widget meetingCard(String title) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(16),

      height: 150,
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: [
          Row(
            children: [
              const CircleAvatar(
                backgroundColor: Color(0xFF2F5DAA),
                child: Icon(Icons.videocam, color: Colors.white),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
              ),
              Row(
                children: const [
                  Icon(Icons.access_alarm, color: Colors.grey, size: 20),
                  SizedBox(width: 5),

                  const Text(
                    "01:30 AM - 02:00 AM",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  CircleAvatar(
                    radius: 10,

                    backgroundImage: AssetImage(
                      'lib/assets/images/Frame.png', // ✅ fixed path
                    ),
                  ),

                  CircleAvatar(radius: 10),
                  SizedBox(width: 5),
                  CircleAvatar(radius: 10),
                  SizedBox(width: 5),
                  Text("+3"),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 87, 136, 219),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {},
                child: const Text("Join Meet"),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // 🔹 Task Card
  Widget taskCard() {
    return Container(
      padding: const EdgeInsets.all(14),
      height: 250,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: const [
              CircleAvatar(
                backgroundColor: Color(0xFF2F5DAA),
                child: Icon(Icons.flash_on, color: Colors.white),
              ),
              SizedBox(width: 20),
              Expanded(
                child: Text(
                  "Wiring Dashboard Analytics",
                  style: TextStyle(fontWeight: FontWeight.w800),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Row(
            children: [
              chip(
                icon: Icons.circle,
                "In Progress",
                Colors.grey.shade300,
                Colors.black,
              ),

              const SizedBox(width: 8),
              chip(
                "High",
                const Color.fromARGB(255, 211, 37, 37),
                const Color.fromARGB(255, 15, 8, 7),
                icon: Icons.flag,
              ),
            ],
          ),
          const SizedBox(height: 30),
          LinearProgressIndicator(
            value: 0.6,
            backgroundColor: Colors.grey.shade300,
            color: const Color(0xFF2F5DAA),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Row(
                children: [
                  CircleAvatar(radius: 15),
                  SizedBox(width: 5),
                  CircleAvatar(radius: 15),
                  SizedBox(width: 5),
                  CircleAvatar(radius: 15),
                ],
              ),
              Row(
                children: const [
                  Icon(Icons.calendar_month, color: Colors.grey, size: 20),
                  SizedBox(width: 5),
                  Text("27 April"),
                  SizedBox(width: 25),
                  Icon(Icons.message, color: Colors.grey, size: 20),
                  SizedBox(width: 5),
                  Text("2"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  // 🔹 Chip
  Widget chip(
    String text,
    Color bg,
    Color textColor, {
    IconData? icon,
    double height = 28,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(icon, size: 14, color: textColor),
            const SizedBox(width: 4),
          ],
          Text(text, style: TextStyle(color: textColor, fontSize: 12)),
        ],
      ),
    );
  }
}
