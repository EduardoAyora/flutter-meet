import 'package:flutter/material.dart';
import 'package:banner_carousel/banner_carousel.dart';

class Carousel extends StatefulWidget {
  Carousel({
    Key? key,
    this.width,
    this.height,
    required this.pathImages,
  }) : super(key: key);

  final double? width;
  final double? height;
  final List<String> pathImages;

  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int currentImageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BannerCarousel.fullScreen(
        onPageChanged: (value) => setState(() => currentImageIndex = value),
        customizedIndicators: const IndicatorModel.animation(
          width: 15,
          height: 15,
          spaceBetween: 2,
          widthAnimation: 30,
        ),
        height: widget.height != null ? widget.height! : 100,
        activeColor: Colors.amberAccent,
        disableColor: Colors.white,
        animation: true,
        borderRadius: 0,
        indicatorBottom: false,
        customizedBanners: widget.pathImages
            .asMap()
            .entries
            .map((entry) => AnimatedOpacity(
                  // If the widget is visible, animate to 0.0 (invisible).
                  // If the widget is hidden, animate to 1.0 (fully visible).
                  opacity: entry.key == currentImageIndex ? 1 : 0,
                  duration: const Duration(milliseconds: 500),
                  // The green box must be a child of the AnimatedOpacity widget.
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(entry.value),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: null /* add child content here */,
                  ),
                ))
            .toList());
  }
}