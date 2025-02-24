import 'package:auto_route/auto_route.dart';
import 'package:demo_museum/routes/app_router.dart';
import 'package:demo_museum/views/fullscreen_sth.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

@RoutePage()
class InteractiveViewScreen extends StatelessWidget {
  final List<String> imageUrls = [
    "assets/images/tonato.jpeg",
    "assets/images/tonato.jpeg",
    "assets/images/tonato.jpeg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Interactive Carousel'),
      ),
      body: CarouselSlider.builder(
        itemCount: imageUrls.length,
        itemBuilder: (context, index, realIndex) {
          return GestureDetector(
            onTap: () {
              context.router.push(FullRouteImageViewerRoute(
                imageUrls: imageUrls,
                initialIndex: index,
              ));
            },
            child: AssetImageWidget(assetPath: "assets/images/tonato.jpeg"),
          );
        },
        options: CarouselOptions(
          height: 400,
          enlargeCenterPage: true,
          autoPlay: true,
          aspectRatio: 16 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          viewportFraction: 0.8,
        ),
      ),
    );
  }
}

class AssetImageWidget extends StatelessWidget {
  final String assetPath;

  const AssetImageWidget({required this.assetPath});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      assetPath,
      fit: BoxFit.contain,
    );
  }
}
