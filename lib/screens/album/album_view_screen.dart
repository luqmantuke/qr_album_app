import 'package:flutter/material.dart';

class AlbumViewScreen extends StatelessWidget {
  const AlbumViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Placeholder for album images
    List<String> images = [
      "Image1",
      "Image2",
      "Image3"
    ]; // Replace with actual image URLs

    return Scaffold(
      appBar: AppBar(
        title: const Text('Event Album'),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // Number of columns
            crossAxisSpacing: 4.0, // Spacing between columns
            mainAxisSpacing: 4.0, // Spacing between rows
          ),
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Card(
              child: Center(
                  child: Text(images[
                      index])), // Replace with Image.network(images[index]) for actual images
            );
          }),
    );
  }
}
