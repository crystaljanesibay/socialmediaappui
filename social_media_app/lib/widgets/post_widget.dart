import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PostWidget extends StatelessWidget {
  final String username;
  final String imageUrl;
  final String caption;
  final String likes;
  final String comments;
  final bool isVerified;

  const PostWidget({
    super.key,
    required this.username,
    required this.imageUrl,
    required this.caption,
    required this.likes,
    required this.comments,
    required this.isVerified,
  });

  @override
  Widget build(BuildContext context) {
    // 1. Return the Card widget here.
    return Card(
        color: Colors.black.withOpacity(0.4), // A slightly translucent card color
    elevation: 0,
    margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    // 2. The Card's child will be your original Column.
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [

        // USER INFO
        ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 12),
          leading: CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage("https://picsum.photos/200?random=$username"),
          ),
          title: Row(
            children: [
              Text(
                username,
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              if (isVerified)
                const Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Icon(Icons.verified, color: Colors.blue, size: 18),
                ),
            ],
          ),
          trailing: const Icon(Icons.more_vert, color: Colors.white),
        ),

        // IMAGE
        Center(
          child: Container(
            width: 800, // FIXED WIDTH
            height: 420, // FIXED HEIGHT
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey[900], // Placeholder background
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: CachedNetworkImage(
                imageUrl: imageUrl,
                fit: BoxFit.cover,
                placeholder: (context, url) => Container(
                  // You can add a shimmer effect here
                  color: Colors.grey[850],
                ),
                errorWidget: (context, url, error) => const Icon(Icons.error, color: Colors.red),
              ),
            ),
          ),
        ),





        const SizedBox(height: 8),

        // ACTIONS
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            children: const [
              Icon(Icons.favorite_border, color: Colors.white, size: 28),
              SizedBox(width: 16),
              Icon(Icons.comment_outlined, color: Colors.white, size: 26),
              SizedBox(width: 16),
              Icon(Icons.send, color: Colors.white, size: 26),
              Spacer(),
              Icon(Icons.bookmark_border, color: Colors.white, size: 26),
            ],
          ),
        ),

        const SizedBox(height: 8),

        // LIKES
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            "$likes likes",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),

        // CAPTION
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$username ",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                TextSpan(
                  text: caption,
                  style: GoogleFonts.poppins(
                    color: Colors.white70,
                  ),
                ),
              ],
            ),
          ),
        ),

        // COMMENTS
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            comments,
            style: GoogleFonts.poppins(
              color: Colors.grey,
            ),
          ),
        ),

        const SizedBox(height: 6),

        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            "2 hours ago",
            style: GoogleFonts.poppins(
              fontSize: 12,
              color: Colors.grey,
            ),
          ),
        ),

        const SizedBox(height: 25),
      ],
    ),
    );
  }
}