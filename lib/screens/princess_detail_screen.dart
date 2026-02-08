import 'package:flutter/material.dart';
import '../models/princess.dart';

class PrincessDetailScreen extends StatelessWidget {
  final Princess princess;

  const PrincessDetailScreen({super.key, required this.princess});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // The extendBodyBehindAppBar allows the gradient to go all the way to the top
      extendBodyBehindAppBar: true, 
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              princess.primaryColor,
              princess.secondaryColor,
              // Adding a darker shade at the bottom for better text contrast
              princess.primaryColor.withOpacity(0.8),
            ],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildImageSection(),
                _buildTitleSection(),
                _buildInfoCard(
                  icon: Icons.auto_stories,
                  title: 'Her Story',
                  content: princess.description,
                  color: princess.primaryColor,
                ),
                _buildFunFactsSection(),
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // 1. Top Image Section with Glow
  Widget _buildImageSection() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      height: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 20,
            spreadRadius: 5,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        // If images aren't ready, it shows the 'face' icon as a fallback
        child: Image.asset(
          princess.imagePath,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) => Container(
            color: Colors.white24,
            child: const Icon(Icons.face, size: 100, color: Colors.white),
          ),
        ),
      ),
    );
  }

  // 2. Name and Tagline
  Widget _buildTitleSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Text(
            princess.name,
            style: const TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: 1.5,
            ),
          ),
          Text(
            '"${princess.tagline}"',
            style: const TextStyle(
              fontSize: 18,
              fontStyle: FontStyle.italic,
              color: Colors.white70,
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  // Reusable Info Card (Story & Facts)
  Widget _buildInfoCard({required IconData icon, required String title, required String content, required Color color}) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: color),
              const SizedBox(width: 10),
              Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: color)),
            ],
          ),
          const Divider(),
          Text(content, style: TextStyle(fontSize: 15, height: 1.5, color: Colors.grey.shade800)),
        ],
      ),
    );
  }

  // 4. Fun Facts specifically handled as a list
  Widget _buildFunFactsSection() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(Icons.stars, color: princess.secondaryColor),
              const SizedBox(width: 10),
              Text('Fun Facts', 
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: princess.secondaryColor)),
            ],
          ),
          const SizedBox(height: 10),
          ...princess.funFacts.map((fact) => Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("✨ ", style: TextStyle(fontSize: 16)),
                Expanded(child: Text(fact, style: const TextStyle(fontSize: 14))),
              ],
            ),
          )),
        ],
      ),
    );
  }
}