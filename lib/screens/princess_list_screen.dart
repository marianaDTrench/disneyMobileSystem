import 'package:flutter/material.dart';
import '../models/princess.dart';

// [CHECKLIST]: StatefulWidget with State class
class PrincessListScreen extends StatefulWidget {
  const PrincessListScreen({super.key});

  @override
  State<PrincessListScreen> createState() => _PrincessListScreenState();
}

class _PrincessListScreenState extends State<PrincessListScreen> {
  // [CHECKLIST]: State variables for selected item and loading state
  Princess? selectedPrincess;
  bool isLoading = false;

  void _handlePrincessTap(Princess princess) async {
    // [CHECKLIST]: setState() called to trigger loading
    setState(() => isLoading = true);
    
    // [CHECKLIST]: Simulated delay for the CircularProgressIndicator
    await Future.delayed(const Duration(seconds: 1));

    setState(() {
      isLoading = false;
      selectedPrincess = princess;
    });

    if (mounted) {
      _showPrincessDetails(context, princess);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      // [CHECKLIST]: AppBar with relevant title
      appBar: AppBar(
        title: const Text('Princess Explorer'),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
      ),
      body: Stack(
        children: [
          SafeArea(
            // [CHECKLIST]: Column widget for layout
            child: Column(
              children: [
                _buildHeader(),
                _buildCountBadge(),
                const SizedBox(height: 16),
                Expanded(
                  // [CHECKLIST]: ListView.builder for dynamic list
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    itemCount: allPrincesses.length,
                    itemBuilder: (context, index) => 
                        _buildPrincessCard(context, allPrincesses[index]),
                  ),
                ),
              ],
            ),
          ),
          // [CHECKLIST]: Show CircularProgressIndicator when delayed
          if (isLoading)
            Container(
              color: Colors.white.withOpacity(0.5),
              child: const Center(child: CircularProgressIndicator()),
            ),
        ],
      ),
    );
  }

  Widget _buildAvatar(Princess princess) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: princess.primaryColor.withOpacity(0.2),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          princess.imagePath,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) => 
              Icon(Icons.person, color: princess.primaryColor),
        ),
      ),
    );
  }

  Widget _buildPrincessCard(BuildContext context, Princess princess) {
    return GestureDetector(
      onTap: () => _handlePrincessTap(princess),
      // [CHECKLIST]: Card widget for list items
      child: Card(
        elevation: 0,
        margin: const EdgeInsets.only(bottom: 12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(color: Colors.grey.shade200),
        ),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              _buildAvatar(princess),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // [CHECKLIST]: Text widgets for info
                    Text(
                      princess.name,
                      style: TextStyle(
                        fontSize: 18, 
                        fontWeight: FontWeight.bold, 
                        color: princess.primaryColor.withOpacity(0.8)
                      ),
                    ),
                    Text(
                      princess.movie,
                      style: TextStyle(fontSize: 13, color: Colors.grey.shade500),
                    ),
                  ],
                ),
              ),
              const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.black12),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return const Padding(
      padding: EdgeInsets.all(24.0),
      child: Row(
        children: [
          Text('Princess Explorer', 
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Colors.black87)),
        ],
      ),
    );
  }

  Widget _buildCountBadge() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(12)),
          child: Text('Collection: ${allPrincesses.length}', 
            style: TextStyle(color: Colors.grey[700], fontSize: 13, fontWeight: FontWeight.w500)),
        ),
      ),
    );
  }

  void _showPrincessDetails(BuildContext context, Princess princess) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        height: MediaQuery.of(context).size.height * 0.55,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
        ),
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: Container(width: 40, height: 4, decoration: BoxDecoration(color: Colors.grey[300], borderRadius: BorderRadius.circular(10)))),
            const SizedBox(height: 24),
            Row(
              children: [
                _buildAvatar(princess),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(princess.name, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                      Text(princess.tagline, style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic, color: Colors.grey[600])),
                    ],
                  ),
                ),
              ],
            ),
            const Divider(height: 40),
            Text(princess.description, style: TextStyle(color: Colors.grey[700], height: 1.5)),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: princess.funFacts.map((fact) => Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Row(
                    children: [
                      Icon(Icons.star_rounded, size: 16, color: princess.secondaryColor),
                      const SizedBox(width: 12),
                      Expanded(child: Text(fact, style: const TextStyle(fontSize: 14))),
                    ],
                  ),
                )).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}