import 'package:flutter/material.dart';

class CustomizableSharingPage extends StatefulWidget {
  const CustomizableSharingPage({super.key});

  @override
  State<CustomizableSharingPage> createState() => _CustomizableSharingPageState();
}

class _CustomizableSharingPageState extends State<CustomizableSharingPage> {
  String selectedAchievement = "Reduced carbon footprint by 30%";
  final List<String> achievements = [
    "Reduced carbon footprint by 30%",
    "Used public transport for 7 days",
    "Switched to LED lights",
    "Planted 5 trees",
    "Avoided single-use plastics"
  ];

  Map<String, bool> selectedPlatforms = {
    "Facebook": false,
    "Twitter": false,
    "WhatsApp": false,
    "Instagram": false,
    "Email": false,
  };

  void _share() {
    final selected = selectedPlatforms.entries
        .where((entry) => entry.value)
        .map((entry) => entry.key)
        .toList();

    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Shared Successfully"),
        content: Text(
          "Your achievement:\n\n\"$selectedAchievement\"\n\nwas shared to:\n${selected.join(", ")}",
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("OK"),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Customizable Sharing"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Select Achievement to Share",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            DropdownButtonFormField<String>(
              value: selectedAchievement,
              decoration: const InputDecoration(border: OutlineInputBorder()),
              items: achievements
                  .map((achievement) => DropdownMenuItem(
                        value: achievement,
                        child: Text(achievement),
                      ))
                  .toList(),
              onChanged: (value) {
                setState(() {
                  selectedAchievement = value!;
                });
              },
            ),
            const SizedBox(height: 30),
            const Text(
              "Choose Platforms to Share",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ...selectedPlatforms.keys.map((platform) {
              return CheckboxListTile(
                title: Text(platform),
                value: selectedPlatforms[platform],
                onChanged: (bool? value) {
                  setState(() {
                    selectedPlatforms[platform] = value ?? false;
                  });
                },
              );
            }).toList(),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: _share,
                icon: const Icon(Icons.share),
                label: const Text("Share Now"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
