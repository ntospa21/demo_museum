import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_tts/flutter_tts.dart';

@RoutePage()
class FullScreenImageViewerScreen extends StatefulWidget {
  final List<String> imageUrls;
  final int initialIndex;

  FullScreenImageViewerScreen({
    required this.imageUrls,
    required this.initialIndex,
  });

  @override
  State<FullScreenImageViewerScreen> createState() =>
      _FullScreenImageViewerScreenState();
}

class _FullScreenImageViewerScreenState
    extends State<FullScreenImageViewerScreen> {
  final FlutterTts flutterTts = FlutterTts();

  Future<void> _speak() async {
    try {
      await flutterTts.setLanguage("el-GR");
      await flutterTts.setPitch(1.0);
      await flutterTts.speak("Αυτό είναι ένα τεστ");
    } catch (e) {
      print("Error: $e");
    }
  }

  void initTs() async {
    try {
      var voices = await flutterTts.getVoices;
      print(voices);
    } catch (e) {
      print("Error: $e");
    }
  }

  @override
  void initState() {
    super.initState();
    initTs();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Viewer'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: PhotoViewGallery.builder(
              itemCount: widget.imageUrls.length,
              builder: (context, index) {
                return PhotoViewGalleryPageOptions(
                  imageProvider: AssetImage(widget.imageUrls[index]),
                  initialScale: PhotoViewComputedScale.contained,
                  minScale: PhotoViewComputedScale.contained,
                  maxScale: PhotoViewComputedScale.covered * 2,
                );
              },
              pageController: PageController(initialPage: widget.initialIndex),
              scrollPhysics: BouncingScrollPhysics(),
              backgroundDecoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: _speak,
              child: Text('Speak Description'),
            ),
          ),
        ],
      ),
    );
  }
}
