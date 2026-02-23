import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/story_widget.dart';
import '../widgets/post_widget.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0F0F12), // Dark background for calm aesthetic

      // ------------------- APP BAR -------------------

      appBar: AppBar(
        backgroundColor: const Color(0xff0F0F12),
        elevation: 0,
        leading: const Icon(Icons.add_box_outlined, size: 28),
        centerTitle: true,
        title: Text(
          "Socialuxe",
          style: GoogleFonts.pacifico(
            fontSize: 26,
            color: Colors.white,
          ),
        ),
        actions: const [
          Icon(Icons.favorite_border, size: 26),
          SizedBox(width: 16),
        ],
      ),

      // ------------------- BODY -------------------

      body: ListView(
        children: [

          // STORIES
          SizedBox(
            height: 115,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                StoryWidget(name: "Your Story", imageUrl: "https://picsum.photos/200?1"),
                StoryWidget(name: "Anna", imageUrl: "https://picsum.photos/200?2"),
                StoryWidget(name: "John", imageUrl: "https://picsum.photos/200?3"),
                StoryWidget(name: "Sophia", imageUrl: "https://picsum.photos/200?4"),
                StoryWidget(name: "Liam", imageUrl: "https://picsum.photos/200?5"),
                StoryWidget(name: "Emma", imageUrl: "https://picsum.photos/200?6"),
                StoryWidget(name: "Luna", imageUrl: "https://images.unsplash.com/photo-1492724441997-5dc865305da7"),
                StoryWidget(name: "Kai", imageUrl: "https://images.unsplash.com/photo-1501785888041-af3ef285b470"),
                StoryWidget(name: "Maya", imageUrl: "https://images.unsplash.com/photo-1470770841072-f978cf4d019e"),
                StoryWidget(name: "Leo", imageUrl: "https://images.unsplash.com/photo-1500530855697-b586d89ba3ee"),
              ],
            ),
          ),

          const Divider(color: Colors.white12),

          // POSTS
          const PostWidget(
            username: "Anna",
            imageUrl: "https://images.unsplash.com/photo-1507525428034-b723cf961d3e",
            caption: "Soft waves and slow days 🌊",
            likes: "1,245",
            comments: "View all 32 comments",
            isVerified: true,
          ),

          const PostWidget(
            username: "John",
            imageUrl: "https://images.unsplash.com/photo-1501785888041-af3ef285b470",
            caption: "Breathing in mountain air 🌄",
            likes: "980",
            comments: "View all 21 comments",
            isVerified: false,
          ),

          const PostWidget(
            username: "Sophia",
            imageUrl: "https://images.unsplash.com/photo-1492724441997-5dc865305da7",
            caption: "Sky therapy kind of day ☁️",
            likes: "2,310",
            comments: "View all 120 comments",
            isVerified: true,
          ),

          const PostWidget(
            username: "Liam",
            imageUrl: "https://images.unsplash.com/photo-1470770841072-f978cf4d019e",
            caption: "Still water, still mind 🕊️",
            likes: "1,102",
            comments: "View all 45 comments",
            isVerified: false,
          ),

          const PostWidget(
            username: "Emma",
            imageUrl: "https://images.unsplash.com/photo-1500530855697-b586d89ba3ee",
            caption: "Golden silence 🌅",
            likes: "3,002",
            comments: "View all 210 comments",
            isVerified: true,
          ),

          const PostWidget(
            username: "Noah",
            imageUrl: "https://images.unsplash.com/photo-1441974231531-c6227db76b6e",
            caption: "Lost in forest calm 🌲",
            likes: "870",
            comments: "View all 15 comments",
            isVerified: false,
          ),

          const PostWidget(
            username: "Olivia",
            imageUrl: "https://images.unsplash.com/photo-1502082553048-f009c37129b9",
            caption: "Peace feels like this 🤍",
            likes: "1,789",
            comments: "View all 67 comments",
            isVerified: true,
          ),

          const PostWidget(
            username: "Lucas",
            imageUrl: "https://images.unsplash.com/photo-1493558103817-58b2924bce98",
            caption: "Minimal mornings 🌤️",
            likes: "640",
            comments: "View all 12 comments",
            isVerified: false,
          ),

          const PostWidget(
            username: "Mia",
            imageUrl: "https://images.unsplash.com/photo-1500534314209-a25ddb2bd429",
            caption: "Chasing quiet sunsets 🌇",
            likes: "2,004",
            comments: "View all 88 comments",
            isVerified: true,
          ),

          const PostWidget(
            username: "Ethan",
            imageUrl: "https://images.unsplash.com/photo-1490730141103-6cac27aaab94",
            caption: "Cloud watching mood ☁️",
            likes: "599",
            comments: "View all 9 comments",
            isVerified: false,
          ),

// Continue up to 20 👇

          const PostWidget(
            username: "Ava",
            imageUrl: "https://images.unsplash.com/photo-1519681393784-d120267933ba",
            caption: "Winter calm ❄️",
            likes: "1,200",
            comments: "View all 43 comments",
            isVerified: true,
          ),

          const PostWidget(
            username: "James",
            imageUrl: "https://images.unsplash.com/photo-1472214103451-9374bd1c798e",
            caption: "Nature reset 🌿",
            likes: "720",
            comments: "View all 18 comments",
            isVerified: false,
          ),

          const PostWidget(
            username: "Isabella",
            imageUrl: "https://images.unsplash.com/photo-1506744038136-46273834b3fb",
            caption: "Earth tones only 🤎",
            likes: "2,140",
            comments: "View all 101 comments",
            isVerified: true,
          ),

          const PostWidget(
            username: "Benjamin",
            imageUrl: "https://images.unsplash.com/photo-1491553895911-0055eca6402d",
            caption: "Ocean whispers 🌊",
            likes: "860",
            comments: "View all 20 comments",
            isVerified: false,
          ),

          const PostWidget(
            username: "Charlotte",
            imageUrl: "https://images.unsplash.com/photo-1470770903676-69b98201ea1c",
            caption: "Peaceful horizon 🌄",
            likes: "3,340",
            comments: "View all 245 comments",
            isVerified: true,
          ),

          const PostWidget(
            username: "Henry",
            imageUrl: "https://images.unsplash.com/photo-1469474968028-56623f02e42e",
            caption: "Healing nature vibes 🌳",
            likes: "1,010",
            comments: "View all 37 comments",
            isVerified: false,
          ),

          const PostWidget(
            username: "Amelia",
            imageUrl: "https://images.unsplash.com/photo-1500534623283-312aade485b7",
            caption: "Sun-kissed serenity 🌞",
            likes: "2,520",
            comments: "View all 129 comments",
            isVerified: true,
          ),

          const PostWidget(
            username: "Daniel",
            imageUrl: "https://images.unsplash.com/photo-1482192596544-9eb780fc7f66",
            caption: "Morning light magic ✨",
            likes: "790",
            comments: "View all 24 comments",
            isVerified: false,
          ),

          const PostWidget(
            username: "Harper",
            imageUrl: "https://images.unsplash.com/photo-1500530855697-b586d89ba3ee",
            caption: "Warm glow moments 🌤️",
            likes: "1,650",
            comments: "View all 58 comments",
            isVerified: true,
          ),

          const PostWidget(
            username: "Elijah",
            imageUrl: "https://images.unsplash.com/photo-1470770841072-f978cf4d019e",
            caption: "Calm over chaos 🤍",
            likes: "920",
            comments: "View all 16 comments",
            isVerified: false,
          ),


        ],
      ),

      // ------------------- BOTTOM NAVIGATION BAR -------------------
      bottomNavigationBar: Container(
        height: 65,
        padding: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Color(0xff0F0F12),
          border: Border(
            top: BorderSide(color: Colors.white12),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Icon(Icons.home, color: Colors.white, size: 28),
            Icon(Icons.search, color: Colors.grey, size: 28),
            Icon(Icons.add_box_outlined, color: Colors.grey, size: 28),
            Icon(Icons.video_library_outlined, color: Colors.grey, size: 28),
            Icon(Icons.person_outline, color: Colors.grey, size: 28),
          ],
        ),
      ),

    );
  }
}