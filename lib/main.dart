import 'package:flutter/material.dart';

void main() {
  runApp(const WaterTrackerApp());
}

class WaterTrackerApp extends StatelessWidget {
  const WaterTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WaterTrackerScreen(),
    );
  }
}

class WaterTrackerScreen extends StatelessWidget {
  const WaterTrackerScreen({super.key});

  static const Color appBarBlue = Color(0xFF3B63C7);
  static const Color backgroundGrey = Color(0xFFEFF3F7);
  static const Color dropBlue = Color(0xFF3F9CFF);
  static const Color titleDark = Color(0xFF141922);
  static const Color textGrey = Color(0xFF4B5567);
  static const Color goalBlue = Color(0xFF2646B5);
  static const Color tipBackground = Color(0xFFDCE9FD);
  static const Color tipText = Color(0xFF2038B0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: appBarBlue,
        toolbarHeight: 60,
        centerTitle: true,
        elevation: 0,
        title: const Text(
          'Water Tracker',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        color: backgroundGrey,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 20, 24, 16),
          child: Column(
            children: [
              const Icon(
                Icons.water_drop,
                size: 88,
                color: dropBlue,
              ),
              const SizedBox(height: 10),
              const Text(
                'Stay Hydrated!',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: titleDark,
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                'Build a healthy daily habit',
                style: TextStyle(fontSize: 18, color: textGrey),
              ),
              const SizedBox(height: 20),

              // Daily goal card (inset further than the tip containers)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 28),
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const Column(
                    children: [
                      Text(
                        'Daily Water Goal',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: textGrey,
                        ),
                      ),
                      Text(
                        '8',
                        style: TextStyle(
                          fontSize: 96,
                          fontWeight: FontWeight.w800,
                          color: goalBlue,
                          height: 1.15,
                        ),
                      ),
                      Text(
                        'glasses per day',
                        style: TextStyle(fontSize: 18, color: textGrey),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 14),

              // Tip containers
              Container(
                width: double.infinity,
                height: 52,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: tipBackground,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'Drink water regularly',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: tipText,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Container(
                width: double.infinity,
                height: 52,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: tipBackground,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Text(
                  'Bring your water bottle',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: tipText,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Every glass counts!',
                style: TextStyle(fontSize: 14, color: textGrey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}