import 'package:Vatki_Clothing_Store/utils/constant/app_color.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeSlider extends StatefulWidget {
  final List<String> banners;
  const HomeSlider({Key? key, required this.banners}) : super(key: key);

  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  RxInt sliderIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CarouselSlider.builder(
              itemCount: widget.banners.length,
              options: CarouselOptions(
                viewportFraction: 1.0,
                enlargeCenterPage: true,
                height: 175,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                onPageChanged: (index, reason) {
                  sliderIndex.value = index;
                },
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                scrollDirection: Axis.horizontal,
              ),
              itemBuilder: (context, i, index) {
                return Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image:  DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(widget.banners[i]),
                    ),
                  ),
                );
              },
            ),
            Positioned(
              bottom: 10,
              child: Row(
                children: List.generate(
                  3,
                  (index) => Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Obx(
                      () => Container(
                        height: 7,
                        width: index == sliderIndex.value ? 14 : 7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: index == sliderIndex.value
                              ? AppColors.primaryColor
                              : Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
