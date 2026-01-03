import 'package:flutter/material.dart';

class BioDataPage extends StatelessWidget {
  const BioDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bio Data"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 6,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                BioItem(title: "Name", value: "Sidharth K V"),
                BioItem(title: "Age", value: "21"),
                BioItem(title: "Email", value: "sidharth@example.com"),
                BioItem(title: "Phone", value: "+91 9876543210"),
                BioItem(title: "Course", value: "Flutter Development"),
                BioItem(title: "Location", value: "India"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class BioItem extends StatelessWidget {
  final String title;
  final String value;

  const BioItem({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Text(
            "$title: ",
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
