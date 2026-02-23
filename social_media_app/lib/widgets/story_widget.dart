import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StoryWidget extends StatelessWidget {
  final String name;
  final String imageUrl;

  const StoryWidget({
    super.key,
    required this.name,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(3),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  Color(0xffF58529),
                  Color(0xffDD2A7B),
                  Color(0xff8134AF),
                ],
              ),
            ),
            child: CircleAvatar(
              radius: 32,
              backgroundImage: NetworkImage(imageUrl),
            ),
          ),
          const SizedBox(height: 6),
          Text(
            name,
            style: GoogleFonts.poppins(
              fontSize: 12,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}